#include "stdint.h"
#include "stdio.h"

void _cdecl cstart_() {
	int araba = 10;
	puts("Hello world from C!\r\n");
	printf("This is printf %d", araba);
	printf("Second test %s", "string");
}


