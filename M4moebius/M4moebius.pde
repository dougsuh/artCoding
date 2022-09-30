float freq,r,t,dt,theta,x0,y0,xc,yc,t0;
void setup(){
  size(1000,350);
  background(120);
  x0 = width/2;
  y0 = height / 2;
  t = 0.0;
  dt = 1/frameRate;
  freq = 0.5;
  fill(255);
}
void draw(){  
  //background(120);
  theta = 2.*3.141592*freq*t;
  r = 150*cos(theta/2);
  t += dt;
  xc = x0 + cos(theta)*r;
  yc = y0 - sin(theta)*r;  // up-side down
  circle(xc,yc,20);
}
