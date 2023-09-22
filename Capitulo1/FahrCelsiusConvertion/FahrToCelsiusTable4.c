#include <stdio.h>


int main () {
    float fahr, celsius;
    int upper, step;

    fahr = 0.0;
    upper = 300;
    step = 20;

    while (fahr <= upper ) {
        celsius = (5.0 / 9.0) * (fahr - 32.0);
        printf("%f \t %f \n", fahr, celsius);
        fahr += step;
    }
}