class molecule {
  molecule(float xx,float yy, float zz) {
    x = xx; y = yy; z = zz; 
    vx = vy = vz = 0;
    active = false;
    if(x>10) { active = true; vx = -2; }
    if(y>10)  { active = true; vy = -2;}
    if(z>10)  { active = true; vz = -2;}
  }
  float x, y, z, vx, vy, vz;
  boolean active;
  void move(){
    x += vx;
    y += vy;
    z += vz;
    if(vx < 0 && x < 5) active = false;
    if(vy < 0 && y < 5) active = false;
    if(vz < 0 && z < 5) active = false;
  }
  void show(){}
}
