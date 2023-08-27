float [] a, b, c, vx, vy;
void setup() {
  size(1000, 800);
  a = new float[8];
  b = new float[8];
  c = new float[8];
  vx = new float[8];
  vy = new float[8];
  for (int i=0; i<8; i++) {
    a[i] = random(width);
    b[i] = random(height);
    c[i] = random(5, 10);
    vx[i] = random(3, 5);
    vy[i] = random(3, 5);
  }
}// setup()
void draw() {
  background(0, 255, 255);
  for (int i=0; i<8; i++) {
      a[i] += vx[i];
      b[i] += vy[i];
      if (a[i]<0 || a[i]>width) vx[i] = -vx[i];
      if (b[i]<0 || b[i]>height) vy[i] = -vy[i];
    if (i<5) smile(a[i], b[i], c[i]);
    else rednose(a[i], b[i], c[i]);
  } // for
} // draw()
void smile(float x, float y, float d) {
  ellipse(x, y, d*15, d*10);
  circle(x-d*3, y-d, 2*d);
  circle(x+d*3, y-d, 2*d);
  arc(x, y, d*10, d*3, 0, PI);
}
void rednose(float x, float y, float d) {
  ellipse(x, y, d*15, d*10);
  fill(255, 0, 0);
  ellipse(x-d*8, y, 3*d, 2*d); // nose
  fill(255);
  circle(x-d*3, y, 4*d);  // eye
  fill(0, 0, 255);
  circle(x-d*3+random(-d, d), y, d);
  fill(255);
}
