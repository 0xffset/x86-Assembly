#include "stdafx.h"
using namespace std;

extern "C" int NumberSum_(int a, int b, int c);

int NumberSum(int a, int b, int c) {
	return a+b+c;
}

int _tmain(int argc, _TCHAR* argv[])
{
	int a = 1, b = 2, c=3;
	int sum = NumberSum(a,b,c);
	printf("sum: $d\n", sum);
	
return 0;
}

