float x,y;
void setup(){
  size(400,250);  
  x = 250;
  y = 100;
  alien();
}
void alien(){
  circle(x,y,150);
  circle(x-30,y-20,50);
  circle(x+30,y-20,50);
}
