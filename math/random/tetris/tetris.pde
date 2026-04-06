// Doug Jan 24, 2026  Monte Carlo for tetris
void setup() {      // a    b    c    d    e   f
  float [] pdf = {12.3, 26.5, 17.23, 22.3, 9.2, 12.47};
  float [] cdf = new float[6];
  float x;
  int i, Ntry = 10000;
  int [] hits = new int[6];
  cdf[0] = pdf[0];  // cdf cumulative distribution function
  for (i = 1; i < 6; i++)  cdf[i] = cdf[i-1]+pdf[i];
  for (i = 0; i < 6; i++) {
    hits[i] = 0;
  }
  for (int n = 0; n < Ntry; n++) {
    x = random(0, 100);
    for (i = 0; i < 6; i++) if (x < cdf[i]) break;
    hits[i]++;
  }
  for (i = 0; i < 6; i++) println( (i+1) + " " + (float)hits[i] / Ntry);
  noLoop();
}
