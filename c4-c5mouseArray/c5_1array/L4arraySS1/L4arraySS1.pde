float x,y;
void setup(){
  size(600,300);
  x = 0;
  y = 150;
}
void draw(){
  background(255,255,0);
  x += 5;
  if(x>width) x = 0;
  smile(x,y);
}
void smile(float a, float b){
  circle(a,b,50);
  circle(a-10,b-10,10);
  circle(a+10,b-10,10);
}
