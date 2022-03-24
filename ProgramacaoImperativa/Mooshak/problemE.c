#include <stdio.h>

#define MAX_SIZE 10000

int length(char *string) {
    int i = 0;

    while (string[i] != '\0') {
        i++;
    }

    return i;
}

int palindrome(char *string, int size) {
    int count = 1, i;

    for (i = 0; i < size; i++) {
        if(string[i] == string[i+1]) {
            int maxCount = 0;
            int indexGoesLeft = i;
            int indexGoesRight = i + 1;

            while (string[indexGoesLeft] == string[indexGoesRight]) {
                indexGoesLeft--;
                indexGoesRight++;
                maxCount += 2;
            }

            if (maxCount > count) {
                count = maxCount;
            }

        }
        
        if (string[i] == string[i+2]) {
            int maxCount = 1;
            int indexGoesLeft = i;
            int indexGoesRight = i + 2;

            while (string[indexGoesLeft] == string[indexGoesRight]) {
                indexGoesLeft--;
                indexGoesRight++;
                maxCount += 2;
            }

            if (maxCount > count) {
                count = maxCount;
            }

        }

    }

    return count;
}

int main() {
    char string[MAX_SIZE];

    if (fgets(string, MAX_SIZE, stdin)) {}

    printf("%d\n", palindrome(string, length(string)));

    return 0;
}

// Escreva um programa que descubra o tamanho da maior subsequência que se lê da mesma forma se for invertida. O seu programa deve escrever o seu tamanho.

// Input
// O seu programa deve receber uma linha com uma sequência. A sequência em causa tem no máximo 10000 posições.

// Ouput
// O seu programa deve imprimir o tamanho da maior subsequência que se lê de igual forma da direita para a esquerda como da esquerda para a direita.

// Sample Tests
// Input 1
// ABCD
// Output 1
// 1

// Input 2
// ABCDCBA
// Output 2
// 7

// Input 3
// ABACBBCDEDT
// Output 3
// 4

// Input 4
// ABACBBCDEDTTDEDCBBCABA
// Output 4
// 22

// Input 5
// SOREGKRAKOVOKARKCEROS
// Output 5
// 11