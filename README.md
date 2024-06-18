# cudapow

CUDA PoW - Proof of Work

**Proof Of Work** Challenge.  

Download CMake  

```bash
wget https://github.com/Kitware/CMake/releases/download/v3.21.1/cmake-3.21.1.tar.gz
```

Extract the tarball  

```bash
tar -xzvf cmake-3.21.1.tar.gz
```

Build and install  

```bash
cd cmake-3.21.1
./configure --prefix=$HOME/.local
make
make install
```


```bash
sudo apt install cmake
git clone 'https://github.com/wmarini/cudapow.git'
cd cudapow/
mkdir -v build/ && cd build/
cmake -G "Unix Makefiles" -DCMAKE_CUDA_FLAGS="-arch=sm_50" -DCMAKE_BUILD_TYPE="Debug" ..
cmake --build .
```