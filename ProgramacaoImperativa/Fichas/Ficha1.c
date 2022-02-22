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

int main() {
    int col, li;

    printf("Insira o número de colunas e número de linhas, respectivamente: ");
    scanf("%d %d", &col, &li);

    // // 3.1
    // tresum(col, li);

    // 3.2
    tresdois(col, li);

    return 0;
}