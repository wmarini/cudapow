#include "exception.h"
#include "pow.h"
#include <iostream>

int main(int argv, char* argc[])
{
    try {
        std::cout << "PoW - Proof Of Work Challange" << std::endl;
        std::cout << "Challenge: " << gpu::dummy() << std::endl;
    } catch (...) {
        app::handle_exception();
    }
    return EXIT_SUCCESS;
}