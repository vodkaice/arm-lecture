#include <stdio.h>
#include <time.h>

extern int fibonacci(int x);

int main(int argc, char **argv)
{
  int number=0;
  int result=0;
  clock_t time;
  float total_t=0;

  scanf("%d",&number);
  time = clock();
  result = fibonacci(number);
  total_t =(float)(clock() - time )/CLOCKS_PER_SEC; 
  printf("The fibonacci sequence at %d is: %d\n", number, result);
  printf("The execute time is : %f second\n",total_t);
}

