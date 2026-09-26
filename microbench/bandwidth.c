// bandwidth.c - single-core read / copy bandwidth vs working-set size.
// Sweeping the working set from L1-resident to DRAM-resident exposes one
// bandwidth plateau per memory level; those plateaus are the slanted
// ceilings of a hierarchical roofline.
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#ifndef VBYTES
#define VBYTES 32
#endif
typedef float vf __attribute__((vector_size(VBYTES)));
static double now(void) { struct timespec t; clock_gettime(CLOCK_MONOTONIC, &t); return t.tv_sec + t.tv_nsec * 1e-9; }
// Compiler barrier: tells the optimizer memory may have changed, so a
// repetition cannot be merged with or hoisted out of the previous one.
// Without it, clang (Apple's default compiler) computes the read loop once and
// deletes repeated identical copies, reporting absurd bandwidth. GCC happens
// not to, which is why this only showed up on macOS.
#define BARRIER(p) __asm__ __volatile__("" : : "r"(p) : "memory")

__attribute__((noinline)) static vf read_kernel(const vf *x, size_t n) {
  vf s0 = {0}, s1 = {0}, s2 = {0}, s3 = {0}, s4 = {0}, s5 = {0}, s6 = {0}, s7 = {0};
  for (size_t i = 0; i + 8 <= n; i += 8) {
    s0 += x[i]; s1 += x[i + 1]; s2 += x[i + 2]; s3 += x[i + 3];
    s4 += x[i + 4]; s5 += x[i + 5]; s6 += x[i + 6]; s7 += x[i + 7];
  }
  return s0 + s1 + s2 + s3 + s4 + s5 + s6 + s7;
}
__attribute__((noinline)) static void copy_kernel(vf *restrict d, const vf *restrict s, size_t n) {
  for (size_t i = 0; i < n; i++) d[i] = s[i];
}

int main(int argc, char **argv) {
  size_t min_b = argc > 1 ? strtoull(argv[1], 0, 10) : 16384;
  size_t max_b = argc > 2 ? strtoull(argv[2], 0, 10) : (size_t)1 << 30;
  double target_s = argc > 3 ? atof(argv[3]) : 0.15;
  vf *x = aligned_alloc(64, max_b), *y = aligned_alloc(64, max_b / 2);
  memset(x, 1, max_b); memset(y, 0, max_b / 2);
  volatile float sink = 0;
  printf("[\n");
  int first = 1;
  for (size_t b = min_b; b <= max_b; b *= 2) {
    size_t n = b / sizeof(vf);
    double best_r = 0, best_c = 0;
    for (int trial = 0; trial < 5; trial++) {
      long reps = 1; double dt;
      for (;;) {  // grow repetitions until one timing window is long enough
        double t0 = now();
        for (long r = 0; r < reps; r++) { BARRIER(x); vf v = read_kernel(x, n); sink += v[0]; }
        dt = now() - t0;
        if (dt > target_s / 5 || reps > (1L << 30)) break;
        reps *= 2;
      }
      double gbs = (double)b * reps / dt / 1e9; if (gbs > best_r) best_r = gbs;
      if (b <= max_b / 2) {
        size_t half = n / 2; long creps = reps; double t0 = now();
        for (long r = 0; r < creps; r++) { BARRIER(y); copy_kernel(y, x, half); }
        double cdt = now() - t0;
        double cg = 2.0 * (double)half * sizeof(vf) * creps / cdt / 1e9;  // read+write bytes
        if (cg > best_c) best_c = cg;
      }
    }
    printf("%s  {\"bytes\": %zu, \"read_gbs\": %.3f, \"copy_gbs\": %.3f}", first ? "" : ",\n", b, best_r, best_c);
    first = 0; fflush(stdout);
  }
  printf("\n]\n");
  return 0;
}
