class Ball4 {
  // constructor
  Ball4() {    op = 0;   }
  Ball4(float a, float b, float c, int d) {
    x=a;     y=b;     D = c;     op = d;
    vx = random(-3,3); vy = random(-4,4);
  }
  // member data
  float x, y, vx,vy,D;
  int op;
  // member function
  void baggue(){
    x += vx; y += vy;
    if(x<0) vx = random(1,3);
    if(x>width) vx = random(-3,-1);
    if(y<0) vy = random(1,3);
    if(y>height) vy = random(-3,-1);
  }
  void display() {
    if (op == 0) fill(255, 0, 0);
    else if (op == 1) fill(0, 255, 0);
    else if (op == 2) fill(0, 0, 255);
    else fill(255);
    circle(x, y, D);     circle(x+D, y, D);
    circle(x, y+D, D);   circle(x+D, y+D, D);
  }
}
