#include <stdio.h>
#include <stdlib.h>

void somatorio(int n) {
    int resultado = 0;

    for (; n > 0; n--) resultado += n;

    printf("O resultado é %d\n", resultado);
}

int main() {
    int i = 0;

    while (i != -1) {
        printf("Insira um número inteiro para calcular o somatório: ");
        scanf("%d", &i);

        somatorio(i);
    }

    return 0;
}