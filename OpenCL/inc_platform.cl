/**
 * Author......: See docs/credits.txt
 * License.....: MIT
 */

#include "inc_vendor.h"
#include "inc_types.h"
#include "inc_platform.h"

#ifdef IS_NATIVE
#endif

#ifdef IS_CUDA

DECLSPEC u32 atomic_dec (u32 *p)
{
  return atomicSub (p, 1);
}

DECLSPEC u32 atomic_inc (u32 *p)
{
  return atomicAdd (p, 1);
}

DECLSPEC size_t get_global_id  (const u32 dimindx __attribute__((unused)))
{
  return blockDim.x * blockIdx.x + threadIdx.x;
}

DECLSPEC size_t get_local_id (const u32 dimindx __attribute__((unused)))
{
  return threadIdx.x;
}

DECLSPEC size_t get_local_size (const u32 dimindx __attribute__((unused)))
{
  // verify
  return blockDim.x;
}

#endif

#ifdef IS_OPENCL
#endif