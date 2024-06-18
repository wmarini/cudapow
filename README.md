# cudapow

CUDA PoW - Proof of Work

**Proof Of Work** Challenge.  

HOWTO execute `powchallenge`.  

```bash
git clone 'https://github.com/wmarini/cudapow.git'
cd cudapow/bin
./powchallenge
```

HOWTO build project with cmake

```bash
cd cudapow/
mkdir -v build/ && cd build/
cmake -G Ninja -DCMAKE_CUDA_FLAGS="-arch=sm_50" -DCMAKE_BUILD_TYPE="Debug" ..
```

