float x, y;
float a, b, c, s;
void setup() {
  size(800, 500);
  x = y = 100;
  a = b = 300;
  c = 0;
  s = 5;
}
void draw() {
  background(255);
  poleak (x, y, 10, c);
  thany(a, b, s);
  if (a>200 && a <300) {
    fill(255, 0, 0);
    textSize(40);
    text("victory", 600, 200);
  } else {
    fill(0, 120, 0);
    textSize(40);
    text("defeat", 600, 200);
  }
}
void mouseWheel(MouseEvent ee) {
  float e = ee.getCount();
  if (e>0) s *= 1.1;
  else if (e<0) s *= 0.9;
}
void keyPressed() {
  if (key == 'a') a-=5;
  else if (key == 'd') a+=5;
  else if (key == 'w') b-=5;
  else if (key == 'r') c=1;
  else if (key == 's') b+=5;
  else if (key == 'b') c=2;
  else c = 0;
  if (key == CODED) {
    if (keyCode == UP) b -= 5;
    else if (keyCode == DOWN) b += 5;
    else if (keyCode == LEFT) a -= 5;
    else if (keyCode == RIGHT) a += 5;
  }
}
void mousePressed() {
  x = mouseX;
  y = mouseY;
}
