#include <stdio.h>
#include "add.h"
#include "multiply.h"

int main() {
    int n = add(3, 5);
    printf("add: %d\n", n);

    n = multiply(3, 5);
    printf("multiply: %d\n", n);

    return 0;
}
