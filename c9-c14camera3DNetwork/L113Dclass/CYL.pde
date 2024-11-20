class Cylinder {
  Cylinder() {
    x = random(-50, 50);
    y = random(-100, 100);
    z = random(-30, 30);
    h = random(100, 200);
    r = random(50, 100);
    grid = (int)random(10, 20);
  }
  float h, r, x, y, z, vx, vy, vz;
  int grid;
  void move(){
    x += vx;
    y += vy;
    z += vz;
    if(x>300 || x <-300) vx = -vx;
    if(y>300 || y <-300) vy = -vy;
    if(z>300 || z <-300) vz = -vz;
  }
  void show() {
    translate(x, y, z);
    float th, dth = PI*2/grid;
    float x1, y1, x2, y2, z1, z2;
    for (int n=0; n<grid; n++) {
      if ((n%2)==0) fill(255, 255, 0);
      else fill(0, 255, 255);
      th = n*dth;
      x1 = r*cos(th-dth);
      y1 = r*sin(th-dth);
      x2 = r*cos(th);
      y2 = r*sin(th);
      beginShape(TRIANGLE_STRIP);
      for (int i=0; i<grid; i++) {
        z1 = h/grid*(i-1);
        z2 = h/grid*i;
        vertex(x1, y1, z1);
        vertex(x1, y1, z2);
        vertex(x2, y2, z1);
        vertex(x2, y2, z2);
      }
      endShape(TRIANGLE_STRIP);
    }
    translate(-x, -y, -z);
  }
}
