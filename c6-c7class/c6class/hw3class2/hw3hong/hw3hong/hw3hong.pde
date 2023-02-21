hong x, y, z, j;
void setup() {
  size(1000, 1000);
  x = new hong(200, 300, 1);
  y = new hong(500, 500, 2);
  z = new hong(800, 700, 3);
  j = new hong();
}
void draw() {
  background(0, 255, 255);
  x.fred();
  x.dot();
  y.fred();
  y.dot();
  z.fred();
  z.dot();
  j.fred();
  j.dot();
  x.move();
  y.move();
  z.move();
  j.move(); // suh
}
