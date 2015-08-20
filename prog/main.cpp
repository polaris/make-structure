#include "foo.h"
#include "bar.h"
#include "sub.h"
#include "subsub.h"

#include <iostream>

int main() {
    std::cout << foo() << std::endl;
    bar();
    std::cout << sub() << std::endl;
    std::cout << subsub() << std::endl;
}
