#include <stdio.h>
// Comparador de numeros
// Escreva um programa que:

// leia dois números inteiros e
// imprima o quadrado do maior numero lido, se os numeros forem iguais imprima a palavra IGUAIS.
// Input
// O seu programa deve receber uma linha com dois valores inteiros separados por espaços.

// Output
// O seu programa deve imprimir uma linha com o quadrado do maior numero ou IGUAIS caso os números introduzidos sejam iguais.

// Input 1
// 69 71
// Output 1
// 5041

// Input 2
// -20 47
// Output 2
// 2209

// Input 3
// -55 -89
// Output 3
// 3025

// Input 4
// 90 68
// Output 4
// 8100

// Input 5
// -70 -70
// Output 5
// IGUAIS

// Input 6
// 94 94
// Output 6
// IGUAIS

int main() {
    int a, b;

    // printf("Números: ");
    if (scanf("%d%d\n", &a, &b) == 2) {
        if (a > b) {
            printf("%d\n", a*a);
        } else if (b > a) {
            printf("%d\n", b*b);
        } else {
            printf("IGUAIS\n");
        }
    }

    return 0;
}