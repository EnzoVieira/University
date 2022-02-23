#include <stdio.h>


// 3.1
void tresum(int colunas, int linhas) {
    for (int i = 0; i < linhas; i++) {

        for (int j = 0; j < colunas; j++) {

            if(j == colunas-1){
                printf("#\n");
            } else {
                printf("#");
            }

        }

    }

}

// 3.2
void tresdois(int colunas, int linhas) {
    for (int i = 0; i < linhas; i++) {

        for (int j = 0; j < colunas; j++) {

            if(j == colunas-1){

                if (i % 2 == 0) {
                    if(j % 2 == 0) {
                        printf("#\n");
                    } else {
                        printf("_\n");
                    }
                } else {
                    if(j % 2 == 0) {
                        printf("_\n");
                    } else {
                        printf("#\n");
                    }
                }

            } else {
                if (i % 2 == 0) {
                    if(j % 2 == 0) {
                        printf("#");
                    } else {
                        printf("_");
                    }
                } else {
                    if(j % 2 == 0) {
                        printf("_");
                    } else {
                        printf("#");
                    }
                }
            }

        }

    }

}

// 3.3
void trestresVertical() {
    int altura = 5;

    for (int i = 0; i < 2 * altura; i++) {
        int colunas;

        if(i < altura) {
            colunas = i;
        } else if (i == altura) {
            colunas = altura;
        } else {
            int degrau = i - altura;
            colunas = altura - degrau;
        }

        for (int j = 0; j < colunas; j++) {

            if(j == colunas-1) {
                printf("#\n");
            } else {
                printf("#");
            }

        }

    }
}

int main() {
    int col, li;

    // 3.1
    // printf("Insira o número de colunas e número de linhas, respectivamente: ");
    // scanf("%d %d", &col, &li);
    // tresum(col, li);

    // 3.2
    // printf("Insira o número de colunas e número de linhas, respectivamente: ");
    // scanf("%d %d", &col, &li);
    // tresdois(col, li);

    trestres();

    return 0;
}