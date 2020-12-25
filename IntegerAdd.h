#include "stdafx.h"

extern "C" char GlChar = 10;
extern "C" short GlShort = 20;
extern "C" int GlInt = 30;
extern "C" long long GlLongLong = 0x00000000FFFFFFFFFE;


extern "C" void IntegerAdd_(char a, short b, int c, long long d);

void IntegerAddition() {
	printf("Before Char: %d\n", GlChar);
	printf("	Short: %d\n", GlShort);
	printf(" 	Int: %d\n", GlInt);
	printf(" 	Long Long: %d\n", GlLongLong);
	printf("\n");
	IntegerAdd_(3,5,-37,11);

	printf("After  Char: %d\n", GlChar);
	printf("	Short: %d\n", GlShort);
	printf("	Int: %d\n", GlInt);
	printf("	Long Long: %d\n", GlLongLong);
	
}
