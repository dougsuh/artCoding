float a, b, c;
void setup(){
  size(300,600);
  a = 150;
  b = 0;
  c = 100;
}
void draw(){
  background(0,255,255);
  b += 5;
  smile(a, b);
  if(b > height) b = 0;
}
