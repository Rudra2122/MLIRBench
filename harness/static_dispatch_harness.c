// static_dispatch_harness.c - run one IREE-compiled matmul dispatch with no
// IREE runtime at all.
//
// IREE can emit a dispatch as a static library (--iree-llvmcpu-link-static).
// That object exposes <name>_library_query(), which returns the HAL executable
// library ABI defined in iree/hal/local/executable_library.h (vendored from the
// same IREE commit as the compiler). This harness:
//   1. queries the library and prints its export table,
//   2. binds A, B, C buffers in pipeline-layout order,
//   3. walks the workgroup grid the compiler computed (passed in as WG_X/Y/Z,
//      extracted from the hal.executable.export count region),
//   4. checks C against a float64 reference.
//
// Because it only needs libc, the same file cross-compiles for riscv64 and
// runs under qemu-riscv64 - which is how MLIRBench executes the RISC-V build.
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "iree/hal/local/executable_library.h"

const iree_hal_executable_library_header_t** QUERY_FN(
    iree_hal_executable_library_version_t max_version,
    const iree_hal_executable_environment_v0_t* environment);

static void* alloc64(size_t bytes) {
  size_t rounded = (bytes + 63) / 64 * 64;
  void* p = aligned_alloc(64, rounded);  // codegen assumes aligned vector loads
  memset(p, 0, rounded);
  return p;
}

int main(void) {
  setvbuf(stdout, NULL, _IONBF, 0);
  const int M = MM, K = KK, N = NN;
  iree_hal_executable_environment_v0_t env;
  memset(&env, 0, sizeof env);
  const iree_hal_executable_library_header_t** header =
      QUERY_FN(IREE_HAL_EXECUTABLE_LIBRARY_VERSION_LATEST, &env);
  if (!header) { printf("{\"status\": \"query_failed\"}\n"); return 2; }
  const iree_hal_executable_library_v0_t* lib = (const void*)header;
  const iree_hal_executable_dispatch_attrs_v0_t* attrs = lib->exports.attrs;

  float* A = alloc64(4ul * M * K);
  float* B = alloc64(4ul * K * N);
  float* C = alloc64(4ul * M * N);
  double* R = calloc((size_t)M * N, sizeof(double));
  srand(0);
  for (int i = 0; i < M * K; i++) A[i] = (rand() % 2001 - 1000) / 1000.f;
  for (int i = 0; i < K * N; i++) B[i] = (rand() % 2001 - 1000) / 1000.f;
  for (int i = 0; i < M; i++)
    for (int k = 0; k < K; k++) {
      double a = A[i * K + k];
      for (int j = 0; j < N; j++) R[i * N + j] += a * B[k * N + j];
    }

  void* ptrs[3] = {A, B, C};
  size_t lens[3] = {4ul * M * K, 4ul * K * N, 4ul * M * N};
  iree_hal_executable_dispatch_state_v0_t ds;
  memset(&ds, 0, sizeof ds);
  ds.workgroup_size_x = ds.workgroup_size_y = ds.workgroup_size_z = 1;
  ds.workgroup_count_x = WG_X;
  ds.workgroup_count_y = WG_Y;
  ds.workgroup_count_z = WG_Z;
  ds.max_concurrency = 1;
  ds.binding_count = 3;
  ds.binding_ptrs = ptrs;
  ds.binding_lengths = lens;

  iree_hal_executable_workgroup_state_v0_t ws;
  memset(&ws, 0, sizeof ws);
  for (uint32_t z = 0; z < ds.workgroup_count_z; z++)
    for (uint32_t y = 0; y < ds.workgroup_count_y; y++)
      for (uint32_t x = 0; x < ds.workgroup_count_x; x++) {
        ws.workgroup_id_x = x; ws.workgroup_id_y = y; ws.workgroup_id_z = z;
        int rc = lib->exports.ptrs[0](&env, &ds, &ws);
        if (rc) { printf("{\"status\": \"dispatch_failed\", \"rc\": %d}\n", rc); return 3; }
      }

  double max_abs = 0, max_ref = 0;
  for (int i = 0; i < M * N; i++) {
    double e = fabs(C[i] - R[i]);
    if (e > max_abs) max_abs = e;
    if (fabs(R[i]) > max_ref) max_ref = fabs(R[i]);
  }
  double rel = max_abs / (max_ref > 0 ? max_ref : 1);
  int ok = rel < 1e-4;
  printf("{\"status\": \"%s\", \"library\": \"%s\", \"exports\": %u, \"bindings\": %u, "
         "\"M\": %d, \"K\": %d, \"N\": %d, \"workgroups\": [%u, %u, %u], "
         "\"max_abs_err\": %.3e, \"max_rel_err\": %.3e}\n",
         ok ? "PASS" : "FAIL", (*header)->name, lib->exports.count,
         attrs ? attrs[0].binding_count : 0, M, K, N, ds.workgroup_count_x,
         ds.workgroup_count_y, ds.workgroup_count_z, max_abs, rel);
  return ok ? 0 : 1;
}
