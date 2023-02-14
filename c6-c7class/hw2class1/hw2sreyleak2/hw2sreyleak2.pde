srey [] aa, b, c;
void setup() {
  size(1000, 500);
  aa = new srey[50];
  for (int i=0; i<50; i++) {
    aa[i] = new srey(random(width), random(height), random(0.2, 0.5));
  }
}
void draw() {
  background(0, 255, 255);
  for (int i=0; i<50; i++) {
    aa[i].sreyShow();
    aa[i].update();
  }
}
