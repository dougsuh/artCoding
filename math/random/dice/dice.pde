// pdf of dice
void setup() {
  int [] hits = new int[6];
  int k, Ntry = 10000;
  for (int i = 0; i < 6; i++) {     hits[i] = 0;  }
  for (int n = 0; n < Ntry; n++) {
    k = (int)(random(0, 6));
    hits[k]++;
  }
  for (int i = 0; i < 6; i++)
    println( (i+1) + " " + (float)hits[i] / Ntry);
  noLoop();
}
