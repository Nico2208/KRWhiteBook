#include <stdio.h>
//Fahr to Celsius degrees using right justified formatted output

int main () {
    int fahr, celsius, upper, step;
    fahr = 0;
    upper = 300;
    step = 20;

    while ( fahr <= upper ) {
        celsius = 5 * (fahr - 32) / 9;
        printf( "%3d\t%6d\n", fahr, celsius );
        fahr += step;
    }

}