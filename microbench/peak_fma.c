// peak_fma.c - single-core FP32 FMA throughput ceiling.
// Uses GCC/Clang vector extensions so the same source builds for AVX-512,
// AVX2, SSE and NEON. VBYTES selects the SIMD width, NACC the number of
// independent accumulator chains (must cover FMA latency x FMA ports).
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#ifndef VBYTES
#define VBYTES 32
#endif
#ifndef NACC
#define NACC 16
#endif
#define LANES (VBYTES / 4)
typedef float vf __attribute__((vector_size(VBYTES)));

// One FMA step per accumulator chain.
// AArch64 `fmla d, n, m` computes d += n*m, overwriting its ADDEND. Written as
// r = r*m + a in C, the addend is the constant `a`, so the compiler must copy
// `a` into a fresh register before every fmla (mov + fmla), halving throughput;
// measured M3 peak came out at ~54 GFLOP/s. The accumulating form r += a*m keeps
// the chain in the addend, but in plain C a compiler would hoist the invariant
// product a*m and emit fadd, not fma. So on AArch64 the step is inline asm.
// x86 FMA3 has a 213 form that avoids the copy, so plain C is fine there.
#if defined(__aarch64__) && VBYTES == 16
#define FMA_STEP(r) __asm__("fmla %0.4s, %1.4s, %2.4s" : "+w"(r) : "w"(a), "w"(m))
#else
#define FMA_STEP(r) ((r) = (r) * m + a)
#endif

static double now(void) { struct timespec t; clock_gettime(CLOCK_MONOTONIC, &t); return t.tv_sec + t.tv_nsec * 1e-9; }

__attribute__((noinline)) static void kernel(vf *acc, vf m, vf a, long iters) {
  vf r[NACC];
  for (int j = 0; j < NACC; j++) r[j] = acc[j];
  for (long i = 0; i < iters; i++) {
#pragma GCC unroll 64
    for (int j = 0; j < NACC; j++) FMA_STEP(r[j]);
  }
  for (int j = 0; j < NACC; j++) acc[j] = r[j];
}

int main(int argc, char **argv) {
  long iters = argc > 1 ? atol(argv[1]) : 20000000L;
  int trials = argc > 2 ? atoi(argv[2]) : 5;
  vf acc[NACC], m, a;
  for (int l = 0; l < LANES; l++) { m[l] = 0.999999f; a[l] = 1e-7f; }
  for (int j = 0; j < NACC; j++) for (int l = 0; l < LANES; l++) acc[j][l] = (float)j;
  kernel(acc, m, a, iters / 10);  // warm up / let clocks settle
  double best = 0;
  for (int t = 0; t < trials; t++) {
    double t0 = now();
    kernel(acc, m, a, iters);
    double dt = now() - t0;
    double gf = 2.0 * LANES * NACC * (double)iters / dt / 1e9;
    if (gf > best) best = gf;
  }
  float sink = 0; for (int j = 0; j < NACC; j++) for (int l = 0; l < LANES; l++) sink += acc[j][l];
  printf("{\"vector_bytes\": %d, \"accumulators\": %d, \"peak_gflops\": %.3f, \"sink\": %g}\n", VBYTES, NACC, best, sink);
  return 0;
}
