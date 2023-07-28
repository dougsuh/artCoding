float x0,y0,d0,vx0,vy0;
float x1,y1,d1,vx1,vy1;
float x2,y2,d2,vx2,vy2;
void setup(){
  size(1000,800);
  x0 = random(width);
  y0 = random(height);
  d0 = random(5,10);
  vx0 = random(3,5);
  vy0 = random(3,5);
  x1 = random(width);
  y1 = random(height);
  d1 = random(5,10);
  vx1 = random(3,5);
  vy1 = random(3,5);
  x2 = random(width);
  y2 = random(height);
  d2 = random(5,10);
  vx2 = random(3,5);
  vy2 = random(3,5);
}
void draw(){
  background(0,255,255);
  x0 += vx0;
  y0 += vy0;
  if(x0<0 || x0>width) vx0 = -vx0;
  if(y0<0 || y0>height) vy0 = -vy0;
  x1 += vx1;
  y1 += vy1;
  if(x1<0 || x1>width) vx1 = -vx1;
  if(y1<0 || y1>height) vy1 = -vy1;
  x2 += vx2;
  y2 += vy2;
  if(x2<0 || x2>width) vx2 = -vx2;
  if(y2<0 || y2>height) vy2 = -vy2;
  reach(x0,y0,d0);
  reach(x1,y1,d1);
  reach(x2,y2,d2);
}
void mouseReleased(){
  x2 = mouseX;
  y2 = mouseY;
}
