bas b;
void setup() {
  size(500, 200);
  b = new bas(10,40,2,0);
}
void draw() {
  background(0,255,255);
  b.update();
}
