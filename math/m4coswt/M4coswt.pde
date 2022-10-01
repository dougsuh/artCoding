float omega,t,theta,x0,y0,xm,ym,t0;
float xp,yp,xc,yc,freq,dt;
void setup(){
  size(1000,350);
  background(120);
  x0 = y0 = 155;
  xm = 350; ym = 155;
  circle(x0,y0,300);
  t = 0;
  freq = 0.05; // Hz
  dt = 0.03;
}
void draw(){  
  stroke(255);
  fill(120);
  circle(x0,y0,300);
  stroke(0,0,255);
  theta = 2.*3.141592*freq*t;
  t += dt;
  xc = x0 + cos(theta)*150;
  yc = y0 - sin(theta)*150;  // up-side down
  line(x0,yc,xc,yc);
  yc = y0 - cos(theta)*150;  // up-side down
  line(xm+t*10,y0,xm+t*10,yc);
  // axises
  stroke(120); // remove old line
  //line(xp,y0,xp,yp);  
  xp = xc; yp = yc;
  stroke(255);
  line(0,y0,310,y0);
  line(x0,y0-153,x0,y0+153);
  line(x0,y0-153,x0,y0+153);
  line(xm,ym,width,ym);
}
