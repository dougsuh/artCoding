float a, b, c, d;
void setup(){
  size(800,300);
  a = 0;
  b = 150;
  c = width;
  d = 150;
}
void draw(){
  background(0,255,255);
  a += 5;
  c -= 5;
  smile(a, b, 0);
  smile(c, d, 1);
  if(c < 0) c = width;
  if(a > width) a = 0;
}
