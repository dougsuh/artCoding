float a,b,f1,f2,t=0,dt;
float x,y;
void setup() {
  size(500, 300);
  a = 200;     b = 100;
  f1 = 1;      f2 = 4;
  frameRate(10);
  dt = 1./frameRate;
}
void draw() {
  background(255);
  noFill();
  circle(width/2,height/2,200);
  ellipse(width/2,height/2,400,200);
  t += dt;
  if(t > 1.0)    t=0.0;
  fill(255,0,0);
  // circle
  x = b*cos(2*PI*f2*t)+width/2;
  y = b*sin(2*PI*f2*t)+height/2;
  circle(x,y,10);
  // ellipse
  x = a*cos(2*PI*f1*t)+width/2;
  y = b*sin(2*PI*f1*t)+height/2;
  circle(x,y,10);
}
