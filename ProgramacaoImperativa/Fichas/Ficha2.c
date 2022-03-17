#include <stdio.h>

float multInt1(int n, float m) {
    float r = 0;
    for(int i = 0; i < n; i++) r += m;

    return r;
}

float multInt2(int n, float m) {
    float r = 0;

    while (n >= 1) {
        if (n % 2 == 1) r += m;

        n /= 2;
        m *= 2;
    }

    return r;
}

int mdc1(int a, int b) {
    int min, max, mdc = 1;

    if (a < b) {
        min = a;
        max = b;
    } else {
        min = b;
        max = a;
    }

    for (int i = 2; i <= min; i++) {
        if (min % i == 0 && max % i == 0) mdc = i;
    }

    return mdc;
}

// Receives a min and a max,
int swapMax(int *min, int *max) {
    int aux = *min;

    if (*max < *min) {
        *min = *max;
        *max = aux;
    }

    return 0;
}

int mdc2(int a, int b) {
    int min = a, max = b, mdc = 1;

    if (a > b) {
        min = b;
        max = a;
    }

    printf("%d %d\n", min, max);
    swapMax(&min, &max);
    printf("%d %d\n", min, max);

    // while (a != 0 || b != 0) {

    // }

    return 0;
}

int main() {
    // printf("%f\n", multInt1(6, 2));
    // printf("%f\n", multInt2(81, 423));
    // printf("%d\n", mdc1(16, 32));

    mdc2(45, 126);

    return 0;
}