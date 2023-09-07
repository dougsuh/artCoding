float [] a, b, c, vx, vy;
void setup() {
  size(1000, 800);
  a = new float[10];
  b = new float[10];
  c = new float[10];
  vx = new float[10];
  vy = new float[10];
  for (int i=0; i<10; i++) {
    a[i] = random(width);
    b[i] = random(height);
    c[i] = random(5, 10);
    vx[i] = random(3, 5);
    vy[i] = random(3, 5);
  }
}// setup()
void draw() {
  background(0, 255, 255);
  for (int i=0; i<10; i++) {
    if (i != 3 && i != 7) {
      a[i] += vx[i];
      b[i] += vy[i];
      if (a[i]<0 || a[i]>width) vx[i] = -vx[i];
      if (b[i]<0 || b[i]>height) vy[i] = -vy[i];
    } else if (i == 3) {
      a[i] = mouseX;
      b[i] = mouseY;
    }
    if (i<4) joon(a[i], b[i], c[i]);
    else if(i<7) jin(a[i], b[i], c[i]);
    else bear(a[i], b[i], c[i]);
  } // for
} // draw()
void keyPressed() {
 if(key == 'a') a[7] -= 10;
 else if(key == 'd') a[7] += 10;
 else if(key == 'w') b[7] -= 10;
 else if(key == 's') b[7] += 10;
 }
