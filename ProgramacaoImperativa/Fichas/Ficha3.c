#include <stdio.h>

// 2
void swapM(int *x, int *y) {
    int a = *x;
    
    *x = *y;
    *y = a;
}

// 3
void swap(int v[], int i, int j) {
    int a = v[i];

    v[i] = v[j];
    v[j] = a;
}

int soma(int v[], int N) {
    int result = 0;

    for (int i = 0; i < N; i++) {
        result += v[i];
    }

    return result;
}

void inverteArray(int v[], int N) {

    for(int i = 0, j = N-1; i < j; i++, j--) {
        int x = v[i];

        v[i] = v[j];
        v[j] = x;
    }
}

int maximum(int v[], int N, int *m) {
    if(N <= 0) 
        return 1;

    int max = v[0];
    // printf("%d %d %p\n", v[0], N, m);

    for (int i = 1; i < N; i++) {
        (v[i] > max) && (max = v[i]);
    }

    *m = max;
    return 0;
}

void quadrados(int q[], int N) {
    q[0] = 0;

    for (int i = 1; i < N; i++)
        q[i] = q[i-1] + (i-1 + i);
}

void pascal(int lines) {
    for (int line = 0; line < lines+1; line++) {

        for (int column1 = 0, column2 = line; column1 < line; column1++) {

        }
        printf("1\n");

    }
}

int main() {
    // 2
    /* int x = 5;
    int y = 10;

    printf("%d %d\n", x, y);
    swapM(&x, &y);
    printf("%d %d\n", x, y);
    */

    // 3
    /* int v[4] = {1, 2, 3, 4};

    for (int i = 0; i < 4; i++) {
        printf("%d", v[i]);
    }
    printf("\n");

    swap(v, 0, 3);

    for (int i = 0; i < 4; i++) {
        printf("%d", v[i]);
    }
    printf("\n");
    */

    // 4
    /*
    int N = 5;
    int v[5] = {1, 2, 3, 4, 5};

    int result = soma(v, N);

    printf("%d\n", result);
    */

    // 5
    /*
    int v[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    for (int i = 0; i < 10; i++) {
        printf("%d  ", v[i]);
    }
    printf("\n");

    inverteArray(v, 10);

    for (int i = 0; i < 10; i++) {
        printf("%d  ", v[i]);
    }
    printf("\n");
    */

    // 6
    /*
    int N = 5, m;
    int v[5] = {1, 2, 7, 4, 5};

    maximum(v, N, &m);
    printf("%d\n", m);
    */

    // 7
    /*
    int v[10] = {0};
    int N = 10;

    quadrados(v, N);

    for (int i = 0; i < 10; i++)
        printf("%d  ", v[i]);
    printf("\n");
    */


    // 8
    pascal(6);

    return 0;
}