#include "stdafx.h"
#include <cstdio>

extern "C" int DivisionMul_(int a, int b, int* prod, int* quo, int* rem);

void DivisionMul() {
	int a = 1, b=2,c=3;
	int prod = 0,quo=0,rem=0;
	int out;
	out = DivisionMul_(a, b, &prod, &quo, &rem);
	printf("--------DivisionMul.h------------\n");
	printf("a: %4d b: %4d\n", a,b);
	printf("out: %4d\n", out);
	printf("--------DivisionMul.h------------\n");
}