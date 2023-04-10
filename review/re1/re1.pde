void setup() {
  boolean 
  size(800, 600);
  smile(100, 200, 100);
  smile(300, 200, 200);
  smile(600, 500, 50);
}
void smile(float x, float y, float d) {
  fill(255, 255, 0); // yellow
  circle(x, y, d);
  circle(x-d/4, y-d/5, d/5);
  circle(x+0.25*d, y-0.2*d, 0.2*d);
}
