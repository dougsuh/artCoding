float x,y,d;
void setup(){
  size(800,700);
  x = 200;  y = 150;  d = 10;
  circle(x,y,d*20);
  circle(x-8*d,y-8*d,10*d);
  circle(x+8*d,y-8*d,10*d);  
  
  x = 600;  y = 100;  d = 5;
  circle(x,y,d*20);
  circle(x-8*d,y-8*d,10*d);
  circle(x+8*d,y-8*d,10*d);  

  x = 400;  y = 450;  d = 20;
  circle(x,y,d*20);
  circle(x-8*d,y-8*d,10*d);
  circle(x+8*d,y-8*d,10*d);  
}
