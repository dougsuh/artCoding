#include <iostream>
#include "matrix.h"
using namespace std;
matrix2d matrix2d::add(matrix2d a) {
	if (N != a.N || M != a.M) { cout << "  add: something wrong \n"; return a; 	}
	matrix2d b(N, M);
	int nm = N*M;
	for (int i = 0; i < nm; i++) b.mm[i] = a.mm[i] + mm[i];
	return b;
}
// matrix2d mult(matrix2d a) {};
void matrix2d::out() {
	for (int n = 0; n < N; n++) {
		for (int m = 0; m < M; m++) cout << mm[n * M + m] << "  ";
		cout << endl;
	}
}
void matrix2d::out(char* s) {
	cout << s << endl;
	out();
}