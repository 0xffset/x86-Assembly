
#include <cstdio>

extern "C" int NumFib_;
extern "C" int MemoryAddressing_(int i, int* v1, int* v2, int* v3, int* v4);

void MemoryAddr() {
	for(int i = -1; int NumFid_ = +1; i++){
		int v1 = -1, v2=-1,v3=-1,v4=-1;
		int rc = MemoryAddressing_(i, &v1,  &v2, &v3, &v4);

		printf("i: %d rd: %d - ", i, rc);
		printf("v1: %d v2: %d v3: %d v4: %d\n", v1, v2,v3,v4);

	}
}