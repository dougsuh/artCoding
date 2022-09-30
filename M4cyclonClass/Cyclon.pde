
class cyclon {
  float vx0, vy0, vx1, vy1, theta, freq, D, dim;
  cyclon(){ dim = 30; };
  cyclon(float x,float y,float f, float d){
    vx0 = x; vy0 = y;
    freq = f; D = d;
    dim = 30.0;
    theta = random(0.0,360.0);
  };
  
  void display() {
    if (D>1) {
      move();
      ellipse(vx1, vy1, dim, dim);
    }
  }
  void move() {
    vx1 = vx0 + D * cos(theta*3.141592/180.0);  
    vy1 = vy0 + D * sin(theta*3.141592/180.0);  
    theta += freq;
    if(theta > 360) theta -= 360;
    D *= 0.995;
  }
}
