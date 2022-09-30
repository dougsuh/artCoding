class shape{
  shape(float xx,float yy){
    x = xx; y = yy;
    vx = random(-5,5);     vy = random(-5,5);
  }
  float x,y,vx,vy;
  void move(){
    x += vx;      y += vy;    
    // collision with walls
    if(x > width) vx = random(-5,-3);
    if(x < 0) vx = random(3,5);
    if(y > height) vy = random(-5,-3);
    if(y < 0) vy = random(3,5);
  }
}
