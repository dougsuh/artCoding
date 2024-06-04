class en {
  en() {
    OP = 0;      x = 500;
    y = 0;        z = 0;
  };
  en(int i) {
    OP = i;      x = 400;
    y = 0;       z = -100;
  };
  float x, y, z;
  int OP;
  color cc;
  void display(int i) {
    translate(x, y, z);
    if (OP==0) rotateX(radians(i));
    if(OP == 0) fill(255, 0, 0);
    else fill(0,255, 0);
    box(50);  
    if (OP==0)rotateX(radians(-i));  
    translate(-x, -y, -z);// return to (0 0 0)
  }
}
