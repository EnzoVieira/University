#include <stdio.h>

int isPrime(int n) {
  for (int i = 2; i < n; i++) {
    if(n % i == 0) return 0;
  }

  return 1;
}

void allPrimes(int a, int b) {
  int min, max;

  if (a > b) {
    max = a;
    min = b;
  } else {
    max = b;
    min = a;
  }

  for(int i = min+1; i < max; i++) {
    if (isPrime(i)) {
      printf("%d É primo\n", i);
    }
  }
}

int calcExtreme(int numeros[10], char s[]) {
  int extreme = numeros[0];

  for (int i = 1; i < 10; i++) {
    int current = numeros[i];
  
    if(s == "max") {
      if (current > extreme) {
        extreme = current;
      }
    } else {
      if (current < extreme) {
        extreme = current;
      }
    }
  }

  return extreme;
}

int main() {
  // allPrimes(1, 100);

  int desordered[] = {1, 2, 3, 4, 5, 9, 7, 8, 6, 0};

  printf("%d\n", calcExtreme(desordered, "max"));

  return 0;
}