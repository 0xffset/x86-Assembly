#include "stdafx.h"

extern "C" int DivisionMul_(int a, int b, int* prod, int* quo, int* rem);

int main(int argc, _TCHAR* argv[]) {
	int a = 21, b=9;
	int prod = 0, quo = 0, rem = 0;
	int rc;

	rc =  DivisionMul_(a,b,&prod,&quo,&rem);
	printf("Input1 - a: %4d b: %4d\n", a,b);
	printf("OutPut: %4\n %4\n", rc, prod);
}