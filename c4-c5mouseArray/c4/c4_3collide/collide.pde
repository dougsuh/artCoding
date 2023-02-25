void myCharic(){
  circle(x,y,100);
  circle(x-20,y-20,40);
  circle(x+20,y-20,40);
}
void myCharic2(){
  circle(x1,y1,100);
  fill(255,0,0);
  circle(x1-20,y1-20,40);
  circle(x1+20,y1-20,40);
  fill(255);
}
void collide(){
  float dx = x1-x;
  float dy = y1 - y;
  float d = sqrt(dx*dx+dy*dy);
  if(d<100){  // if collide
    dx = vx;       dy = vy;
    vx = vx1;     vy = vy1;
    vx1 = dx;    vy1 = dy;
  }
}
