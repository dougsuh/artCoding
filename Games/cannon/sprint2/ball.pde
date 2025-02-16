class ball{
  ball(){};
  ball(float xx, float yy, float v,float a){
    x = xx;
    y = yy;
    vx = v*cos(radians(a));
    vy = v*sin(radians(a)); 
    alive = true;
    g = -10.0;
    dt = 1./frameRate;
  }
  ball(cannon c){
    x = c.x;
    y = c.y;
    float a;
    if(c.eastwest == 0) a = c.angle;
    else a = 180 - c.angle;
    dt = 1./frameRate*3; // fast forward
    vx = c.v*cos(radians(a));
    vy = c.v*sin(radians(a)); 
    alive = true;
    g = -10.0; // gravitational acceleration
  }
  float x,y,vx,vy,dt,g;
  boolean alive;
  void move(){
    x += vx*dt;
    vy += g*dt;
    y -= vy*dt;
  }
  void display(){
    fill(0);
    circle(x,y,10);
    fill(255);
    circle(x-3,y-3,2);
  }
  void check(cannon c){
    if(distance(c)<40){
      c.alive = false;
      alive = false;
    } else if(y>c.y) alive = false;
  }
  float distance(cannon c){
    float d,dx,dy;
    dx = x - c.x;
    dy = y - c.y;
    d = sqrt(dx*dx+dy*dy);
    return d;
  }
}
