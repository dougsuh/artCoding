float x, x1, y1, y, d1, d;
void setup() {
  size(900, 800);
  x1 = 100;
  y1 = 200;
  d1 =2;
  x = 300;
  y = 200;
  d =1;
}
void draw() { // called 60 times in 1 second
  background(255, 255, 0); // yellow
  vichea1(x1, y1, d1);
  vichea(x, y, d);
}
void mouseReleased() {
  x1 = mouseX;
  y1 = mouseY;
}
void keyPressed() {
  if (key == 'a') x -= 8;
  else if (key == 'd') x += 8;
  else if (key == 'w') y -= 8;
  else if (key == 's') y += 8;
  else {
    x1 = mouseX;
    y1 = mouseY;
  }
}
