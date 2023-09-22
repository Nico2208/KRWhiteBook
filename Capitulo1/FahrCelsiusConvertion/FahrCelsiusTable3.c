#include <stdio.h>
//Fahr to Celsius converting chart using Floating point data type instead of Int variable type.

int main () {
    float fahr, celsius;
    int upper, step;

    fahr = 0.0; //Escribir el 0 como 0.0 en un float no cambia en nada, pero se enfatiza en el caracter flotante de la variable para el lector.
    upper = 300;
    step = 20;

    while ( fahr <= upper ) { // upper es converitdo en float antes de que se realice la comparación con fahr.
        celsius = ( 5.0 /9.0 )*( fahr - 32.0 );  //En una operacion aritmetica que involucra un integer y un float, el integer se convierte automaticamente en float
        printf("%3.1f\t%6.1f\n", fahr, celsius);
        fahr += step;
    }
}