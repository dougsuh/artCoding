#pragma once
class matrix2d {
public:
	matrix2d() {
		N = M = 2;
		mm = new float[N * M];
	}
	matrix2d(int n, int m) {
		N = n; M = m;
		mm = new float[N * M];
	}
	matrix2d(int n, int m, float *a) {
		N = n; M = m;
		mm = new float[N * M];
		copy(a);
	}
	int N, M;
	float* mm;
	matrix2d add(matrix2d);
	matrix2d mult(matrix2d) {};
	void out();
	void out(char*);
	void copy(float*);
};