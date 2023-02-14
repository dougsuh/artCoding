sky [] aa;
void setup() {
  size(1000, 1000);
  aa = new sky[50];
  for (int i=0; i<50; i++) {
    aa[i] = new sky(random(width), random(height), random(50, 150));
  }
}
void draw() {
  background(0, 255, 255);
  for (int i=0; i<50; i++) {
    aa[i].skyShow();
    aa[i].update();
  }
}
