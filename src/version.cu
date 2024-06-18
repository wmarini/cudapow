#include <cstdio>
#include <cstdlib>

namespace app {

__host__ int Version()
{
    int n_devices;
    cudaError_t err = cudaGetDeviceCount(&n_devices);
    if (err != cudaSuccess) {
        std::puts(cudaGetErrorString(err));
        std::exit(EXIT_FAILURE);
    }
    return n_devices;
}

} // namespace app
