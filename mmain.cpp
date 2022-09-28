#include <iostream>
#include "matrix.h"
using namespace std;
int main() {
	matrix2d A(3, 2), B(3, 2);
	A.mm[0] = 1; A.mm[1] = 2;
	A.mm[2] = 3; A.mm[3] = 4;
	A.mm[4] = 5; A.mm[5] = 6;
	B.mm[0] = 1; B.mm[1] = -1;
	B.mm[2] = 1; B.mm[3] = -1;
	B.mm[4] = 1; B.mm[5] = -1;
	matrix2d C = A.add(B);
	C.out((char*)" C ");
	return 123;
}