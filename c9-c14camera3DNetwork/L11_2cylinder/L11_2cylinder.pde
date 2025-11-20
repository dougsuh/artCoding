cylinder [] cc;
void setup() { 
  size(600, 600, P3D);
  cc = new cylinder[2];
  cc[0] = new cylinder(100,100,10);
  cc[0].set(width/2,200,0);
  cc[1] = new cylinder(50,200,20);
  cc[1].set(width/2,400,0);
}
void draw(){
  background(0);  lights();
  for(cylinder p: cc){
    p.update();
  }
}
class cylinder {
  cylinder(float w, float h, int gg) {
    this.w = w;
    this.h = h;
    this.grid = gg;
    angle = 0;
    option = 2;
  }
  void set(float xx, float yy, float zz) {
    x = xx;
    y = yy;
    z = zz;
  }
  float w, h, angle, x, y, z;
  int grid, option;
  void update() {
    if (angle++ > 360) angle = 0;    
    pushMatrix();
    translate(x,y,z);
    if(option == 1) rotateX(radians(angle));
    else if(option == 2) rotateY(radians(angle));
    else if(option == 3) rotateZ(radians(angle));  
    show();
    popMatrix();
  } // end of update 
  void show() {
    fill(255, 255, 0);
    float th, dth = PI*2/grid;
    float x1, y1, x2, y2, z1, z2;
    for (int n=0; n<grid; n++) {
      th = n*dth;
      x1 = w*cos(th-dth);        y1 = w*sin(th-dth);
      x2 = w*cos(th);                y2 = w*sin(th);
      beginShape(TRIANGLE_STRIP);
      for (int i=0; i<grid; i++) {
        z1 = h/grid*(i-1);            z2 = h/grid*i;
        vertex(x1, y1, z1);         vertex(x1, y1, z2);
        vertex(x2, y2, z1);          vertex(x2, y2, z2);
      }
      endShape(TRIANGLE_STRIP);
    }
  } // end of show
}// end of class
