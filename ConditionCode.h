#include "stdafx.h"

extern "C" int SignedMinA_(int a, int b, int c);
extern "C" int SignedMaxA_(int a, int b, int c);
extern "C" int SignedMinB_(int a, int b, int c);
extern "C" int SignedMaxB_(int a, int b, int c);

void ConditionCode() {
	int a,b,c;
	int smin_a,smax_a;
	int smin_b,smax_b;

	// SignedMin examples
	a = -3; b=-22;c=28;
	smin_a = SignedMinA_(a,b,c);
	smin_b = SignedMinB_(a,b,c);
	printf("SignedMInA(%d, %d, %d) = %d\n", a,b,c,smin_a);
	printf("SignedMInB(%d, %d, %d) = %d\n", a,b,c,smin_b);
	
	// SignedMax examples
	a = -1; b=-23;c=21;
	smin_a = SignedMaxA_(a,b,c);
	smin_b = SignedMaxB_(a,b,c);
	printf("SignedMaxA(%d, %d, %d) = %d\n", a,b,c,smax_a);
	printf("SignedMaxB(%d, %d, %d) = %d\n", a,b,c,smax_b);

}
