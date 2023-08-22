class cannon {
  cannon(float xx, float yy,int op) {
    angle = 45;
    x = xx;
    y = yy;
    alive = true;
    eastwest = op;
    v = 660;
  }
  float x, y, v, angle;
  int eastwest;
  boolean alive;
  void display() {
    if(!alive) angle = 0;
    float tt;
    if(eastwest == 0) tt = radians(angle);
    else tt = PI - radians(angle);
    strokeWeight(5);
    line(x, y, x+70*cos(tt),y-70*sin(tt));
    arc(x, y+5, 70, 50, PI, 2*PI);
    strokeWeight(1); // back to default
  }
}
