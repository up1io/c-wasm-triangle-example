#include <stdint.h>

const char hello[] = "Hello, world from C";

__attribute__((export_name("get_hello_ptr")))
const char* get_hello_ptr(void) {
    return hello;
}

__attribute__((export_name("get_hello_len")))
uint32_t get_hello_len(void) {
    return sizeof(hello) - 1;
}