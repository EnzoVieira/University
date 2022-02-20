#include <stdio.h>

int main() {
  int intVariableName = 1;
  float floatVariableName = 1.9;
  char charVariableName;

  charVariableName = 'C';
  intVariableName = 2;

  printf("Hello world! \n");
  printf("I am learning C.\n");

  printf("I am learning C.\tAnd this is awesome\n");

  // printf(intVariableName); // Error
  printf("%d\n", intVariableName);
  printf("%f\n", floatVariableName);
  printf("%c\n", charVariableName);

  const int MYCONSTINT = 15;

  // Operadores de comparação devolvem
  // ou 1 (true) ou 0 (false)
  printf("%d\n", 1 > 3);


  // The memory size (in bytes) of a data type 
  // or a variable can be found with the sizeof operator:
  int myInt;
  float myFloat;
  double myDouble;
  char myChar;

  // Note that we use the %lu format specifer to print the result, 
  // instead of %d. It is because the compiler expects the sizeof 
  // operator to return a long unsigned int (%lu), instead of int (%d). 
  // On some computers it might work with %d, but it is safer to use %lu.
  printf("%lu\n", sizeof(myInt));
  printf("%lu\n", sizeof(myFloat));
  printf("%lu\n", sizeof(myDouble));
  printf("%lu\n", sizeof(myChar));
  return 0;
}