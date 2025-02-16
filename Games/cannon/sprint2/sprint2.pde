cannon c1, c2;
boolean start = false;
void setup() {
  size(1000, 500);
  c1 = new cannon(200, 300,true);
  c2 = new cannon(800, 300, false);
}
void draw() {
  background(255, 255, 0);
  line(0, 300, width, 300);
  mountain(300);
  c1.display();      c2.display();
  if (start) {
    if (c1.alive && c2.alive) {
      c1.update(c2);   c2.update(c1);
    }
  }
}  // draw
void mouseClicked() {
  start = true;
  c1.fire();      c2.fire();
}

