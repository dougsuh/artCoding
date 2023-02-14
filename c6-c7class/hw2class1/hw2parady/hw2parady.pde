la [] ham;
void setup() {
  size(1200, 1000);
  ham = new la[10];
  for (int i=0; i<10; i++) {
    ham[i] = new la(random(width), random(height));
  }
}
void draw() {
  background(255, 255, 0);
  for (int i=0; i<10; i++) {
    ham[i].hamburger(); // draw hamberger
    ham[i].panha(); // move
  }
}
