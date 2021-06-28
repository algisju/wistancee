// pgdd et ppcm
//Compute the   least common multiple   (LCM)   of two integers.
//Given   arg1  and   arg2,the least common multiple is the smallest positive integer that has both   m   and   n   as factors. 
#include <stdio.h>
#include <stdlib.h>
 
int gcd(int m, int n)
{
        int tmp;
        while(m) { tmp = m; m = n % m; n = tmp; }  
        return n;
}
 
int lcm(int m, int n)
{
        return m / gcd(m, n) * n;
}
 
int main(int argc, char *argv[]) {
    if(argc<=1) {
        printf("You did not feed me arguments, I will die now :( ...");
        exit(1);
     }  //otherwise continue on our merry way....
     int arg1 = atoi(argv[1]);  //argv[0] is the program name
     int arg2 = atoi(argv[2]);  //atoi = ascii to int
     //Lets get a-crackin!

	printf("gcd(%d, %d) = %d\n", arg1, arg2, gcd(arg1,arg2));
	printf("lcm(%d, %d) = %d\n", arg1, arg2, lcm(arg1,arg2));
	return 0;
}
