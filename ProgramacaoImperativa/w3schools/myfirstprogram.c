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
  return 0;
}