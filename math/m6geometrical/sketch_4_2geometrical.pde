//    Geometrical distribution
//    Doug Young Suh
//    Nov. 4 2019
//
//    p[i] = (1-p)^(i-1)p
//    i = number of trials at the first success
long n=15, N = 10000, nn=0;
float p, x, y, grid;
int hit=0;  
int[] hits;
void setup() {
  size(800, 800);  
  background(0);
  nn = 0;
  frameRate(1000); 
  p = 0.3;
  grid = width/(float)(n+1);
  hits = new int[(int)n+1];
  for (int i=0; i<=n; i++) hits[i] = 0;
}
void draw() {  
  if (++nn < N) {
    // experiments
    hit = 0;
    while (random(0, 1)>p) hit++;
    if (hit<n+1) {
      hits[hit]++;
      // show historgram
      x = random(grid);         
      y = random(grid*(hits[hit]+1)*0.003);
      unitcircle(hit*grid+x, y, color(255, 0, 0));
    }
  }
  // show the resulting probabilities
  else if (nn==N) {
    fill(255);
    textSize(50);
    for (int i=0; i<=n; i++) {
      text(i+": "+hits[i]/(float)N + "\n", 550, 50*(i+1));
    }
  }
}
void unitcircle(float x, float y, color c) {
  fill(c);
  circle(x, y, 10);
}
