#include <stdio.h>

int main(){
    int fahr;

    for ( fahr = 300; fahr >= 0; fahr -= 20 ) {
        printf("%d \t %f\n", fahr, (5.0/9.0)*(fahr - 32.0));
    }

}