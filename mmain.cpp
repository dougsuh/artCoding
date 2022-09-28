#include <iostream>
#include "matrix.h"
using namespace std;
int main() {
	float b[] = { 1,-1,1,-1,1,-1 };
	matrix2d A(3, 2), B(3, 2, b);
	float a[] = { 1,2,3,4,5,6 };
	A.copy(a);
	matrix2d C = A.add(B);
	C.out((char*)" C ");
	return 123;
}