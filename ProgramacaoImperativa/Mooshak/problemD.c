#include <stdio.h>
#include <stdbool.h>

#define MAX_SIZE 33554432

bool sieve[MAX_SIZE];

void populateArray(bool a[], int N) {
    for (int i = 0; i < N; i++)
        a[i] = 0;
}

int howMuchTriangleNumbers(int start, int finish) {
    int n = 1;
    int count = 0;

    while (n * (n+1) / 2 <= finish) {
        if ((n) * (n+1) / 2 >= start)
            count++;

        n++;
    }

    return count;
}

void printArray(bool a[], int N) {
    for (int i = 0; i < N; i++) 
        printf("%d - %d\n", i, sieve[i]);
}

int sieveEratosthenes(int min, int max) {
    int i, j, k; // Index's
    int size = max - min + 1;
    int count = 0;

    // Popular array de booleanos até o valor máximo
    populateArray(sieve, max);

    // Correr até o número menor ou igual a raiz quadrada do número máximo
    for(i = 2; i*i <= max; i++) {
        // Se esse número já estiver marcado, ignore-o
        if (sieve[i] == 1)
            continue;
        // Caso contrário, elimine todos os seus múltiplos
        for (j = 2*i; j <= max; j += i) 
            sieve[j] = 1;
    }

    // Contar todos os primos encontrados (começando a partir do mínimo).
    for (k = min; k <= max; k++) {
        if (k < 2)
            continue;

        if (sieve[k] == 0) 
            count++;
    }

    return count;
}

int main() {
    int start, finish;

    if(scanf("%d %d", &start, &finish) == 2) {
        printf("%d %d\n", howMuchTriangleNumbers(start, finish), sieveEratosthenes(start, finish));
    }

    return 0;
}

// Contagem de valores
// Escreva um programa que:

// leia dois valores inteiros;
// conte a quantidade de números triangulares dentro do intervalo entre os dois valores;
// conte a quantidade de primos dentro do intervalo entre os dois valores.

// Input
// O seu programa deve receber uma linha com dois valores inteiros separados por espaços. Ambos os valores estão entre 1 e 2 elevado a 25.

// Output
// O seu programa deve imprimir uma linha com a quantidade de números triangulares e a quantidade de primos separadas por um espaço.

// Input 1
// 1 1
// Output 1
// 1 0

// Input 2
// 1 2
// Output 2
// 1 1

// Input 3
// 1 10
// Output 3
// 4 4

// Input 4
// 1 120
// Output 4
// 15 30

// Input 5
// 10 99681
// Output 5
// 443 9559

// Input 6
// 507 37706
// Output 6
// 243 3897

// Input 7
// 840 7694
// Output 7
// 83 830

// Input 8
// 130 28544
// Output 8
// 223 3073

// Input 9
// 762 24365
// Output 9
// 182 2569

// Input 10
// 512 75425
// Output 10
// 356 7335