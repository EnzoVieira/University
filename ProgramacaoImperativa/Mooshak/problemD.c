#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int howMuchTriangleNumbers(int start, int finish) {
    int n = 1;
    int count = 0;

    while (n * (n+1) / 2 <= finish) {
        if ((n) * (n+1) / 2 >= start)
            count++;

        n++;
    }

    return count;
}

int isPrime(int n) {
    printf("n: %d\n", n);

    printf("n == 2 || n == 3: %d %d\n", n == 2, n == 3);
    if (n == 2 || n == 3)
        return 1;

    printf("n mod 2 == 0 || n mod 3 == 0: %d %d\n", n % 2 == 0, n % 3 == 0);
    if (n % 2 == 0 || n % 3 == 0) 
        return 0;

    int i = 1;

    printf("6*i - 1: %d\n", 6*i - 1);
    while (6*i - 1 <= n || 6*i + 1 <= n) {
        printf("dentro do while -- 6*i - 1  6*i + 1: %d %d\n", 6*i - 1, 6*i + 1);
        if (6*i - 1 == n || 6*i + 1 == n)
            return 1;

        i++;
    }

    return 0;
}
// int isPrime(int n) {
//     if(n < 2) return 0;

//     for (int i = 2; i <= sqrt(n); i++) {
//         if(n % i == 0) 
//             return 0;
//     }

//     return 1;
// }

int howMuchPrimeNumbers(int start, int finish) {
    int n = start;
    int count = 0;

    for (; n <= finish; n++) {
        // printf("%d %d\n", n, isPrime(n));

        if(isPrime(n))
            count++;
    }

    return count;
}

int main() {
    int start, finish;

    // if(scanf("%d %d", &start, &finish) == 2) {
    //     printf("%d %d\n", howMuchTriangleNumbers(abs(start), abs(finish)), howMuchPrimeNumbers(abs(start), abs(finish)));
    // }

    isPrime(25);

    return 0;
}

// Input 1
// 1 1
// Output 1
// 1 0

// Input 2
// 1 2
// Output 2
// 1 1

// Input 3
// 1 10
// Output 3
// 4 4

// Input 4
// 1 120
// Output 4
// 15 30

// Input 5
// 10 99681
// Output 5
// 443 9559

// Input 6
// 507 37706
// Output 6
// 243 3897

// Input 7
// 840 7694
// Output 7
// 83 830

// Input 8
// 130 28544
// Output 8
// 223 3073

// Input 9
// 762 24365
// Output 9
// 182 2569

// Input 10
// 512 75425
// Output 10
// 356 7335