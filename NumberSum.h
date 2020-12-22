#include "stdafx.h"
#include <cstdio>


extern "C" int NumberSum_(int a, int b, int c);


void NumberSum()
{
	printf("--------NumberSum.h------------\n");
	int a = 1, b = 2, c=3;
	int sum = NumberSum_(a,b,c);
	printf("sum: %d\n", sum);
	printf("--------NumberSum.h------------\n");

}

