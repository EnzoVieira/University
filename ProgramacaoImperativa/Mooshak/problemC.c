#include <stdio.h>

int greater(int a, int b, int c) {
    if (a >= b && a >= c)
        return a;
    if (b >= a && b >= c)
        return b;

    return c;
}

int factorial(unsigned int n) {
    int i = n;
    int result = 1;

    while (i > 1) {
        result *= i;
        i--;
    }

    return result;
}

int isFactorial(int n) {
    int i = 1;
    for (int fact = factorial(i); fact <= n; fact = factorial(++i)) {
        if(fact == n)
            return 1;
    }

    return 0;
}

int sort(int a, int b, int c, int greater) {
    int bigger = a;

    if(greater == b) {
        bigger = b;

        if (a > c)
            printf("%d %d %d\n", c, a, bigger);
        else
            printf("%d %d %d\n", a, c, bigger);
    } else if(greater == c) {
        bigger = c;

        if (a > b)
            printf("%d %d %d\n", b, a, bigger);
        else
            printf("%d %d %d\n", a, b, bigger);
    } else {
        if (b > c)
            printf("%d %d %d\n", c, b, bigger);
        else
            printf("%d %d %d\n", b, c, bigger);
    }

    return 0;
}

int main() {
    int a, b, c;

    if(scanf("%d %d %d", &a, &b, &c) == 3) {
        int bigger = greater(a, b, c);

        if (isFactorial(bigger)) {
            printf("FATORIAL\n");
        } else {
            sort(a, b, c, bigger);
        }
    }

    return 0;
}

// Input 1
// 161699797 213945693 479001600
// Output 1
// FATORIAL

// Input 2
// 38399398 479001600 70087932
// Output 2
// FATORIAL

// Input 3
// 479001600 96655473 235996946
// Output 3
// FATORIAL

// Input 4
// 920347059 22455144 114578789
// Output 4
// 22455144 114578789 920347059

// Input 5
// 495380429 481243311 96549762
// Output 5
// 96549762 481243311 495380429

// Input 6
// 961467795 501991047 778637197
// Output 6
// 501991047 778637197 961467795