float x,y,d;
void setup(){
  size(600,400);
  frameRate(5);
  x = 0; y = 200; d = 100;
}
void draw(){  
  background(0,255,255); // cyan
  d = random(100,200);
  smile(x,y,d);
  x += 15;
  if(x>width) x = 0;
}
void smile(float a, float b, float r){
  circle(a,b,r);
  circle(a-0.3*r,b-0.1*r,0.2*r);
  circle(a+0.3*r,b-0.1*r,0.2*r);
}
