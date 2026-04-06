// Doug Jan 24, 2026  Gaussian random N(m, sigma)
void setup() {
  float x, mean = 5, sigma = 2;
  float EX=0, Var=0;
  int N = 10000;
  for (int i = 0; i < N; i++) {
    x = mean + randomGaussian()*sigma;
    EX += x;
    Var += x * x;
  }
  EX /= (float)N;
  Var /= (float)N;
  Var = Var - EX * EX;
  println(" mean " + EX + "  5.0\n");
  println(" Var " + sqrt(Var) + "  2.0\n");
  noLoop();
}
