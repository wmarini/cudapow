# cudapow

CUDA PoW - Proof of Work

**Proof Of Work** Challenge.  

```bash
cd project/
mkdir -v build/ && cd build/
cmake -G Ninja -DCMAKE_CUDA_FLAGS="-arch=sm_50" -DCMAKE_BUILD_TYPE="Debug" ..
cmake --build .
```