include_directories("${CMAKE_SOURCE_DIR}/include/pow")
message(STATUS "Platform in use: ${CMAKE_SOURCE_DIR}")
add_library(pow STATIC
    "pow.cu"
)
target_compile_features(pow PUBLIC cxx_std_17)
set_property(TARGET ${target_name} 
        PROPERTY CUDA_SEPARABLE_COMPILATION ON)
