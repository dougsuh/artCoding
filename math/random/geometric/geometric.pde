// Doug Jan 24, 2026  Geometric (theory and simulation)
int N = 10000;
int n = 10;
float p = 1./6.;
void setup() {
  float [] pth = new float[n+1];
  float [] psim = new float[n+1];
  theory(pth);
  simulation(psim);
  PrintWriter xx;
  xx = createWriter("geo.txt");
  for (int i = 0; i <= n; i++) {
    xx.println( i+" "+pth[i] + " " + psim[i]);
  }
  xx.flush();
  xx.close();
  noLoop();
}
