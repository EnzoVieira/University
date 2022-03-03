#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// 3.1
void tresum(int colunas, int linhas) {
    for (int i = 0; i < linhas; i++) {

        for (int j = 0; j < colunas; j++) {
            if(j == colunas-1) printf("#\n"); else printf("#");
        }

    }

}

// 3.2
void tresdois(int colunas, int linhas) {
    for (int i = 0; i < linhas; i++) {

        for (int j = 0; j < colunas; j++) {

            if(j == colunas-1){

                if (i % 2 == 0) {
                    if(j % 2 == 0) printf("#\n"); else printf("_\n");
                } else {
                    if(j % 2 == 0) printf("_\n"); else printf("#\n");
                }

            } else {
                if (i % 2 == 0) {
                    if(j % 2 == 0) printf("#"); else printf("_");
                } else {
                    if(j % 2 == 0) printf("_"); else printf("#");
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
            if(j == colunas-1) printf("#\n"); else printf("#");
        }

    }
}

// 3.3 Horizontal
void trestresHorizontal(int altura) {
    int margin;

    for (int i = 0; i < altura; i++) {
        margin = altura - i+1;

        for (int j = 0; j < margin; j++) printf(" ");

        int colunas;
        if (i == 0) colunas=1; else colunas=2*i+1;

        for (int k = 0; k < colunas; k++) {
            if(k == colunas-1) printf("#\n"); else printf("#");
        }
    }

}

// 4
int funcCirc(x, r) {
    return sqrt(abs(x * x - 2*x*r));
}

void quatro(int raio) {
    for (int k = 0; k < raio - funcCirc(0, raio); k++) {
        printf(" ");
    }
    printf("#\n");

    for (int i = 0; i < 2*raio; i++) {
        int altura = funcCirc(i, raio);
        int spacing = raio - altura;

        for (int k = 0; k < spacing; k++) {
            if (altura != 0) printf(" ");
        }

        for (int j = 0; j < altura; j++) {
            printf("#");
        };

        for (int j = 0; j < altura; j++) {
            if (j == altura - 1) 
                printf("#\n");
            else 
                printf("#");
        };
    }

    for (int k = 0; k < raio - funcCirc(0, raio); k++) {
        printf(" ");
    }
    printf("#\n");
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
    // trestresVertical(10);

    // 3.3 Horizontal
    // trestresHorizontal(10);

    // 4
    quatro(5);
    // printf("%f\n", funcCirc(2, 2));

    return 0;
}