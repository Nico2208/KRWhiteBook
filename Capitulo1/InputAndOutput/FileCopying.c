//Programa que copia el input en output un caracter a la vez.

#include <stdio.h>

int main() {
    int c;
    c = getchar(); //lee el siguiente caracter ingresado en el text stream.

    while( c != EOF ) {
        putchar(c); //Imprime un caracter cada vez que es llamado. 
        c = getchar();
    }
}