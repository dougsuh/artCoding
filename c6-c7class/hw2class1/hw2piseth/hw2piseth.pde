Piseth [] aa;
void setup() {
  size(1000, 1000);
  aa = new Piseth[50];
  for (int i=0; i<50; i++) {
    aa[i] = new Piseth(random(width), random(height), random(50, 150),i);
  }
}
void draw() {
  background(0, 255, 255);
  for (int i=0; i<50; i++) {
    aa[i].Life();
    aa[i].act();
  }
}
