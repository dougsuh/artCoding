float x,y;
void setup(){
  size(400,250);
  x = 250;
  y = 100;
  circle(x,y,150);
  x = x - 30;
  y = y - 20;
  circle(x,y,50);
  x += 60;  // x = x + 60;
  circle(x,y,50);
}
