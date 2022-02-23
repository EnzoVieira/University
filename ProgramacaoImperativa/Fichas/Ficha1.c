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

// 3.3 Vertical
void trestresVertical(int altura) {
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

// 3.3 Horizontal
void trestresHorizontal(int altura) {
    int margin;

    for (int i = 0; i < altura; i++) {
        margin = altura - i+1;

        for (int j = 0; j < margin; j++) {
            printf(" ");
        }

        int colunas;
        if (i == 0) colunas=1; else colunas=2*i+1;

        for (int k = 0; k < colunas; k++) {
            if(k == colunas-1){
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

    // 3.3 Vertical
    // trestresVertical(5);

    // 3.3 Horizontal
    trestresHorizontal(5);

    return 0;
}