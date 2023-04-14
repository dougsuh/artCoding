float angle = 0;
void setup() {
  size(640, 800, P3D);
  frameRate(10);
}
void draw() {
  background(0);
  translate(width/2, height/2-50, 0);
  stroke(255);
  lights();
  translate(58, 48, 0);
  angle++;
  rotateX(2*PI*angle/6/frameRate);
  fill(255, 0, 0);
  Cylinder(200, 50, 20);
}
void Cylinder(float h, float r, int grid) {
  fill(255, 255, 0);
  float th, dth = PI*2/grid;
  float x1, y1, x2, y2, z1, z2;
  for (int n=0; n<grid; n++) {
    th = n*dth;
    x1 = r*cos(th-dth);      y1 = r*sin(th-dth);
    x2 = r*cos(th);          y2 = r*sin(th);
    beginShape(TRIANGLE_STRIP);
    for (int i=0; i<grid; i++) {
      z1 = h/grid*(i-1);     z2 = h/grid*i;
      vertex(x1, y1, z1);    vertex(x1, y1, z2);
      vertex(x2, y2, z1);    vertex(x2, y2, z2);
    }
    endShape(TRIANGLE_STRIP);
  }
}
