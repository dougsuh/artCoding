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
}
void draw() {
  background(255, 255, 0);
  for (int i=0; i<10; i++) {
      circle(x[i], y[i], 2*r[i]);
  }
}
void mouseReleased() {
  for (int i=0; i<10; i++) {
    d = distance(mouseX, mouseY, x[i], y[i]);
    if (d<r[i]) r[i] *= 0.5;
  }  
}
float distance(float a1, float b1, float a2, float b2) {
  float dis;
  dis = sqrt((a1-a2)*(a1-a2)+(b1-b2)*(b1-b2));
  return dis;
}
