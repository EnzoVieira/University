#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

int *fib(int numbers[], int size) {
    for (int i = 0; i < size; i++) {
        if (i > 1) numbers[i] = numbers[i-1] + numbers[i-2];
        else numbers[i] = 1;
    }

    return numbers;
}

int pascalTriangle(int numbers[], int size) {
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < i+1; j++)
            printf("%d ", numbers[j]);

        printf("\n");
    } 

    return 0;
}

int firstAct() {
    int *numbersAddr;
    int size;

    printf("Digite o tamanho do triângulo: ");
    scanf("%d", &size);

    numbersAddr = malloc(size * sizeof(int));

    fib(numbersAddr, size);

    pascalTriangle(numbersAddr, size);

    return 0;
}

int length(char word[100]) {
    int l = 0;

    for(; l < 100; l++) {
        if ((int) word[l] == 0 || word[l] == ' ')
            break;
    }

    return l;
}

int isPalindrome(char word[], int size) {
    for(int i = 0, j = size-1; i < j; i++, j--) {

        if(toupper(word[i]) != toupper(word[j]))
            return 0;
    }

    return 1;
}

int secondAct() {
    char word[100];

    printf("Digite uma palavra para verificar se é palíndromo: ");
    gets(word);

    int size = length(word);

    if(isPalindrome(word, size))
        printf("A palavra %s é palíndromo\n", word);
    else
        printf("A palavra %s não é palíndromo", word);

    return 0;
}

int main() {
    // firstAct();

    secondAct();

    return 0;
}