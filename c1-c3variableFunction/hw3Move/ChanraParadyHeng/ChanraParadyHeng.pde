float x1,x2,x3;
float y1,y2,y3,d;
void setup() {
  size(900, 600);
  x1 = 400; y1 = 100;
  x2 = 200; y2 = 200;
  x3 = 600; y3 = 600;
  d = 1.;
}
void draw(){
  background(255,255,0);
  hamburger(x1,y1);
  tlight(x2,y2,d);
  ship(x3,y3);
  x1 = x1 + 3;
  x2 = x2 - 1;
  y2 = y2 + 1;
  x3 += 1;
  if(x1>width) x1 = 0;
  if(x2<0) x2 = width;
  if(y2>height) y2 = 0;  
  if(x3>width) x3 = 0;
  d *= 1.01;
  if(d>2) d=0.5;
}
