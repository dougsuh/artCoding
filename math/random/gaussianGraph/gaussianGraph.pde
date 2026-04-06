// Doug Jan 24, 2026  Gaussian random N(m, sigma)
int N = 10000;
float m = 5.0, s = 2.0;
void setup() {
  float [] hit = new float[100];
  for (int i = 0; i < 100; i++) hit[i] = 0;
  for (int i = 0; i < N; i++) {
    for (int j = 0; j < N; j++) {
      hit[grid(m+s*randomGaussian())]++;
    }
  }
  PrintWriter xx;
  xx = createWriter("gs.txt");
  for (int i = 0; i < 100; i++) {
    xx.println( ((float)i/100.* 8*s-4*s)*s+m + " " +hit[i]);
  }
  xx.flush();
  xx.close();
  noLoop();
}
int grid(float x) {
  int i = (int)(((x - m) / s + 4*s) / (8*s) * 100);
  if (i > 99) i = 99;     else if (i < 0) i = 0;
  return i;
}
//  println("fac(5) = " + factorial(5));
float factorial(float x){
  if(x>0.0) return(x*factorial(x-1));
  else return 1.0;
}
