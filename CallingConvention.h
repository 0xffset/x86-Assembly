#include "stdafx.h"

extern "C" void ComputeSums_(int a, int b, int c, int* s1, int* s2, int* s3);

void ComputeSums() {
	int a=3,b=5,c=8;
	int s1a,s2a,s3a;

	ComputeSums_(a,b,c,&s1a,&s2a,&s3a);
	int s1b=a + b + c;
	int s2b=a * a + b * b + c*c;
	int s3b=a*a*a+b*b*b+c*c*c;
	printf("-------------CallingConvetion.h------------\n");
	printf("input: a: %d b: %d c: %d\n", a,b,c);
 	printf("Output: s1a: %d s2a: %d s3a: %d\n", s1a,s2a,s3a);
	printf("        s1b: %d s2b: %d s3b: %d\n", s1b, s2b, s3b);
	printf("-------------CallingConvetion.h------------\n");
	 
}
