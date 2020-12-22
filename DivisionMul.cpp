#include<cstdio>

extern "C" int _DivisionMul(int a, int b, int* prod, int* quo, int* rem);


int main() {
	int a = 21, b=9;
	int prod = 0, quo = 0, rem = 0;
	int rc;

	rc =  _DivisionMul(a,b,&prod,&quo,&rem);
	printf("Input1 - a: %4d b: %4d\n", a,b);
	printf("OutPut: %4d\n %4d\n", rc, prod);
}