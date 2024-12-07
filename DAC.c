#include <reg51.h>

void delay(unsigned int a) {
    unsigned int i, j;
    for (i = 0; i < a; i++) {
        for (j = 0; j < 1275; j++) {
            // Waste time for delay
        }
    }
}

void main() {
    P1 = 0x00; // Set P1 initially to 0
    while (1) {
        P1 = 0xFF; // Turn on all bits of P1
        delay(50); // Delay
        P1 = 0x00; // Turn off all bits of P1
        delay(50); // Delay
    }
}
