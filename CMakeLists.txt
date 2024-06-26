cmake_minimum_required(VERSION 3.22)

project(pow CXX CUDA)

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_COMPILER nvcc)

add_subdirectory(pow)
include_directories("include")

function(add_program target_name)
	add_executable(${target_name} ${ARGN})
	target_include_directories(${target_name} 
		PRIVATE include/pow)
    set_property(TARGET ${target_name} 
        PROPERTY CUDA_SEPARABLE_COMPILATION ON)
	target_link_libraries(${target_name}
		PRIVATE 
			pow
            cuda)
endfunction()


add_program("powchallenge" 
	"src/main.cpp"
    "src/exception.cpp"
	"src/version.cu"
)
# reference: https://developer.nvidia.com/blog/building-cuda-applications-cmake/