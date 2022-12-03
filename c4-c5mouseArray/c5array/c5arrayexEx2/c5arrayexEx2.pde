float [] x, y, r;
float d;
void setup() {
  size(600, 600);
  x = new float[10];
  y = new float[10];
  r = new float[10];
  for (int i=0; i<10; i++) {
    x[i] = random(width);
    y[i] = random(height);
    r[i] = 50;
  }
  x[6] = 100;    y[6] = 100;
  x[7] = 100;    y[7] = 500;
  x[8] = 500;    y[8] = 500;
  x[9] = 500;    y[9] = 100;
}
void draw() {
  background(0,255, 255);
  for (int i=0; i<6; i++) {
    circle(x[i], y[i], 2*r[i]);
    if (mousePressed) {
      d = distance(mouseX, mouseY, x[i], y[i]);
      if (d<r[i]) r[i] *= 0.5;
    }
  }
  fill(255, 0, 0);
  circle(x[6], y[6], 2*r[6]);
  fill(0,0,255);
  circle(x[7], y[7], 2*r[7]);
  fill(0, 255, 0);
  circle(x[8], y[8], 2*r[8]);
  fill(255,0,255);
  circle(x[9], y[9], 2*r[9]);
  fill(255);
}
float distance(float a1, float b1, float a2, float b2) {
  float dis;
  dis = sqrt((a1-a2)*(a1-a2)+(b1-b2)*(b1-b2));
  return dis;
}
