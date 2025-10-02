#include "wiring.hpp"
#include <iostream>

void initialize_cpp_module() {
    std::cout << "C++ module initialized." << std::endl;
}

void call_c_from_cpp() {
    std::cout << "Placeholder: call C module from C++." << std::endl;
}
