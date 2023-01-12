float x1,x2,x3;
float y1,y2,y3;
void setup() {
  size(600, 600);
  x1 = 500; y1 = 200;
  x2 = 300; y2 = 400;
  x3 = 500; y3 = 300;
}
void draw(){
  background(0,255,255);
  x1 += 2;
  x2 -= 2;
  y3 += 3;
  if(x1>width) x1 = 0;
  if(x2<0) x2 = width;
  if(y3>height) y3 = 0;
  som(x1, y1, 0.5);
  srey(x2, y2, 0.5);
  piseth(x3, y3, 120);
}
