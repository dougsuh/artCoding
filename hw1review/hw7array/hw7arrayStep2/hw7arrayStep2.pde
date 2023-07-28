float [] a, b, c, vx, vy;
void setup() {
  size(1000, 800);
  a = new float[3];
  b = new float[3];
  c = new float[3];
  vx = new float[3];
  vy = new float[3];
  for (int i=0; i<3; i++) {
    a[i] = random(width);
    b[i] = random(height);
    c[i] = random(5, 10);
    vx[i] = random(3, 5);
    vy[i] = random(3, 5);
  }
}
void draw() {
  background(0, 255, 255);
  for (int i=0; i<3; i++) {
    a[i] += vx[i];
    b[i] += vy[i];
    if (a[i]<0 || a[i]>width) vx[i] = -vx[i];
    if (b[i]<0 || b[i]>height) vy[i] = -vy[i];
    reach(a[i], b[i], c[i]);
  }
}
void mouseReleased() {
  a[2] = mouseX;
  b[2] = mouseY;
}
