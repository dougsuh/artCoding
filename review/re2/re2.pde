void setup() {
  size(800, 600);
  smile(100,200,100);
  cry(400,200);
}
void smile(float x, float y, float d) {
  fill(255, 255, 0); // yellow
  circle(x, y, d);
  circle(x-d/4, y-d/5, d/5);
  circle(x+0.25*d, y-0.2*d, 0.2*d);
}
void cry(float x, float y) {
  fill(0, 255, 255); // cyan
  float d = 100;
  square(x, y, d);
  square(x+0.2*d, y+0.3*d, d/5);
  square(x+0.6*d, y+0.3*d, 0.2*d);
}
