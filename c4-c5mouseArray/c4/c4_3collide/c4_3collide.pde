float x,y,vx,vy;
float x1,y1,vx1,vy1;
void setup(){
  size(400,300);
  x = random(0,width);
  y = random(0,height);
  vx = random(-4,4);
  vy = random(-3,3);
  x1 = y1 = 200;
  vx1 = vy1 = 3;
}
void draw(){
  background(120);
  x += vx;   y += vy;
  if(x<0 || x>width) vx = -vx; 
  if(y<0 || y>height) vy = -vy;   
  x1 += vx1;   y1 += vy1;
  if(x1<0 || x1>width) vx1 = -vx1; 
  if(y1<0 || y1>height) vy1 = -vy1; 
  myCharic();     myCharic2();
  collide();
}
