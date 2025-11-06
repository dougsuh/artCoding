class cannon {
  cannon(float xx, float yy,boolean op) {
    x = xx;            y = yy;
    alive = true;      east = op;
    v = 100 + random(-5,5);
    angle = 30;
    myBall = new ball();
  }
  float x, y, v, angle;
  boolean alive, east;
  ball myBall;
  void update(cannon cc){    
    myBall.move();  // move ball
    myBall.display();
    myBall.check(cc); // hit or miss
    if(!myBall.alive){
      fire();  // fire again
    }
  }
  void fire(){
    myBall.x = x;      myBall.y = y-10;
    // fire direction center
    if(!east)angle += myBall.miss/50;  
    else angle -= myBall.miss/50;  
    float a;
    if(east) a = angle; else a = 180 - angle;
    myBall.vx = v*cos(radians(a));
    myBall.vy = v*sin(radians(a)); 
    myBall.alive = true;
  }
  void display() {
    if(!alive) angle = 0;
    float tt;
    if(east) tt = radians(angle);
    else tt = PI - radians(angle);
    strokeWeight(5);
    line(x, y-10, x+70*cos(tt),y-10-70*sin(tt)); // gun
    arc(x, y+5, 70, 50, PI, 2*PI); // body
    strokeWeight(1); // back to default
  }
}
