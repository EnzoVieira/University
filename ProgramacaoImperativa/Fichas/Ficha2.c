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



int main() {
    // printf("%f\n", multInt1(6, 2));
    // printf("%f\n", multInt2(81, 423));
    // printf("%d\n", mdc1(16, 32));

    return 0;
}