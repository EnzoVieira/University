#include <math.h>
#include <stdio.h>
// Enunciado
// Escreva um programa que:

// leia três números inteiros, o raio da base maior, a altura e o raio da base menor do cone;
// escreva o volume do tronco do cone (considere pi=3.14) truncado para inteiro.
// Sugestões
// Pode consultar informação sobre o volume do tronco de um cone aqui.

// Input
// O seu programa deve receber uma linha com três valores inteiros separados por espaços, correspondendo ao raio da base maior, a altura e o raio da base menor do cone.

// Output
// O seu programa deve imprimir uma linha com o valor do volume do tronco do cone truncado para inteiro.

// Sample Tests
// Input 1
// 41 36 14
// Output 1
// 92353
// Input 2
// 22 41 15
// Output 2
// 44586
// Input 3
// 94 48 50
// Output 3
// 805648
// Input 4
// 87 36 61
// Output 4
// 625374
// Input 5
// 58 53 24
// Output 5
// 295783

int main() {
    int baseMa, altura, baseMe;
    float pi = 3.14;

    // printf("Insira a base maior, altura e base menor, respectivamente: ");
    if(scanf("%d%d%d\n", &baseMa, &altura, &baseMe) == 3) {
        float volume = (((pi * altura) / 3) * (pow(baseMa, 2) + baseMa * baseMe + pow(baseMe, 2)));
        printf("%d\n", (int) volume);
    }

    return 0;
}