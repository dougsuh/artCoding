int[] hits, cdf; // 10% 15% 15% 30% 20% 10%
int x, chip;
void setup() {
  size(600, 400);
  hits = new int[6];
  cdf = new int[6];
  for (int i=0; i<6; i++) hits[i] = 0;
  cdf[0] = 10;           // 10
  cdf[1] = cdf[0] + 15;  // 25
  cdf[2] = cdf[1] + 15;  // 40
  cdf[3] = cdf[2] + 30;  // cdf[3]=70
  cdf[4] = cdf[3] + 20;  // 90
  cdf[5] = 100;
  frameRate(4);
}
void draw() {  
  background(0, 255, 255); // cyan
  x = (int)random(0, 100);
  chip = MonteCarlo(x); 
  drawChip(width/2, 50, chip);
  hits[chip]++;
  for (int i=0; i<6; i++) {    
    drawChip(20+i*80, height-100, i);
  }
}
