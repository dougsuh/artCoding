class cam{
  cam(){x=y=z=170;};
  float x,y,z;
  void rotateX(float t){
    float yy,zz;
    yy = cos(t) *y + sin(t) * z;
    zz = -sin(t) *y + cos(t) * z;
    y = yy;
    z = zz;
  }
  void rotateY(float t){
    float xx,zz;
    xx = cos(t) *x + sin(t) * z;
    zz = -sin(t) *x + cos(t) * z;
    x = xx;
    z = zz;
  }
  void scale(float ss){
    x *= ss;  y *= ss;  z *= ss; 
  }
  void translate(float xx,float yy,float zz){
    x += xx;
    y += yy;
    z += zz;
  }
}
