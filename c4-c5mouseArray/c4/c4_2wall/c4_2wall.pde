float x,y,vx,vy;
void setup(){
  size(600,400);
  x = random(0,width);
  y = random(0,height);
  vx = random(-4,4);
  vy = random(-3,3);
}
void draw(){
  background(120);
  x += vx;
  y += vy;
  if(x<0 || x>width) vx = -vx; 
  if(y<0 || y>height) vy = -vy; 
  myCharic();
}
void myCharic(){
  circle(x,y,100);
  circle(x-20,y-20,40);
  circle(x+20,y-20,40);
}
