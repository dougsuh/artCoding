float a, b, c, vx, vy;
void setup(){
  size(600,300);
  a = 150; 
  b = 0;
  c = 100;
  vx = vy = 5;
}
void draw(){
  background(0,255,255);
  b += vy;
  a += vx;
  smile(a,b,c);
  if(b > height || b < 0) vy = -vy;
  if(a > width || a < 0) vx = -vx;
}
