float [] x, y, r;
float d;
color [ ] cc;
void setup() {
  size(600, 600);
  x = new float[10];
  y = new float[10];
  r = new float[10];
  cc = new color[10];
  for (int i=0; i<10; i++) {
    x[i] = random(width);
    y[i] = random(height);
    r[i] = 50;
    cc[i] = color(255,255,100);
  }
  // 4 special objects in the corners  i = 0~3
  float ww = 50;
  x[0] = ww; x[1] = width - ww; x[2] = width - ww; x[3] = ww;
  y[0] = ww; y[1] = height - ww; y[2] = ww; y[3] = height - ww;
  cc[0] = color(255,0,0); cc[1] = color(0,0,255); cc[2] = color(0,255,0);
  cc[3] = color(255,0,255);
}
void draw() {
  background(0,255, 255);
  for (int i=0; i<10; i++) {
    fill(cc[i]); // yellow for i = 4~9, red for i=0, blue for i = 1...
    circle(x[i], y[i], 2*r[i]);
  }
}
void mouseReleased() {  // Sprint 2: mouse only for i = 4, 5,..9
  for (int i=4; i<10; i++) {  // i=0, 1, 2, 3 are excluded
      d = distance(mouseX, mouseY, x[i], y[i]);
      if (d<r[i]) r[i] *= 0.5;
  }
}
float distance(float a1, float b1, float a2, float b2) {
  float dis;
  dis = sqrt((a1-a2)*(a1-a2)+(b1-b2)*(b1-b2));
  return dis;
}
