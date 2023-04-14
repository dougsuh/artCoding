void setup() {
  size(800,800, P3D);
  camera(300,300,400,0,0,100,-1,0,0);
  lights();            translate(0,0,100);
  Cylinder(200,50,20);                                                        
  translate(100,100,-100);
  noStroke();
  Cylinder(100,100,10);
}
void Cylinder(float h, float r, int grid) {
  float th, dth = PI*2/grid;
  float x1, y1, x2, y2, z1, z2;
  for (int n=0; n<grid; n++) {
    if((n%2)==0) fill(255,255,0);
    else fill(0,255,255);
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
