float x1, x2, y1, y2, d1, d2;
void setup() {
  size(600, 400);
  x1 = 100;
  y1 = 200;
  d1 =10;
  x2 = 300;
  y2 = 200;
  d2 =50;
}
void draw() { // called 60 times in 1 second
  background(255, 255, 0); // yellow
  preap(x1, y1, d1);
  dog(x2, y2, d2);
}
void mouseReleased() {
  x1 = mouseX;
  y1 = mouseY;
}
void keyPressed() {
  if (key == 'a') x2 -= 4;
  else if (key == 'd') x2 += 4;
  else {
    x2 = mouseX;
    y2 = mouseY;
  }
}
