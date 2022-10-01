CObject a;
void setup() {
  size(500, 300);
  a = new CObject();
}
void draw() {
  background(0,255,255);
  a.update();
}
