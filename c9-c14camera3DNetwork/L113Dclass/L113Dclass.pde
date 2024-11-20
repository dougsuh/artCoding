Cylinder c1,c2;
void setup() {
  size(800,800, P3D);
  camera(300,300,400,0,0,0,-1,0,0);
  c1 = new Cylinder();
  c2 = new Cylinder();
  c1.vy = c1.vz = 0;
  c2.vx = c2.vz = 0;
  c1.vx = 2;
  c2.vy = 3;
}
void draw(){
  background(0,255,255);
  lights();  
  c1.move();
  c2.move();
  c1.show();
  c2.show();
}
