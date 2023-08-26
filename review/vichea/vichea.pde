float[] x, y;
float[] x1, y1;
float[] x3, y3;
float[] vx3, vy3;
float[] vx1, vy1;
float[] vx, vy;
void setup() {
  size(1000, 1000);
  x = new float[3];
  y = new float[3];
  x1 = new float[3];
  y1 = new float[3];
  x3 = new float[3];
  y3 = new float[3];
  
  vx = new float[3];
  vy = new float[3];
  vx1 = new float[3];
  vy1 = new float[3];
  vx3 = new float[3];
  vy3 = new float[3];
  for (int i = 0; i < 3; i++) {
    x[i] = random(width);
    y[i] = random(height);
    x1[i] = random(width);
    y1[i] = random(height);
    x3[i] = random(width);
    y3[i] = random(height);
    vy[i] = random(-10, 10);
    vx[i] = random(-10, 10);
    vy1[i] = random(-10, 10);
    vx1[i] = random(-10, 10);
    vy3[i] = random(-10, 10);
    vx3[i] = random(-10, 10);
  }
}
void draw() {
  background(#1CEA77);
  for (int i = 0; i < 3; i++) {
    vichea(x[i], y[i], 2);
    vichea1(x1[i], y1[i], 1.7);
    vichea3(x3[i], y3[i], 2.9);
    x[i] += vx[i];
    y[i] += vy[i];
    x1[i] += vx1[i];
    y1[i] += vy1[i];
    x3[i] += vx3[i];
    y3[i] += vy3[i];
    if (x[i]>width || x[i]<0) {
      vx[i] = -vx[i];
    }
    if (y[i]>height || y[i]<0) {
      vy[i] = -vy[i];
    }
    if (x1[i]>width || x1[i]<0) {
      vx1[i] = -vx1[i];
    }
    if (y1[i]>height || y1[i]<0) {
      vy1[i] = -vy1[i];
    }
    if (x3[i]>width || x3[i]<0) {
      vx3[i] = -vx3[i];
    }
    if (y3[i]>height || y3[i]<0) {
      vy3[i] = -vy3[i];
    }
  }
}
void mouseReleased() {
  //for (int i=0; i<1; i++) {
    x3[2]=mouseX;
    y3[2]= mouseY;
  //}
}
