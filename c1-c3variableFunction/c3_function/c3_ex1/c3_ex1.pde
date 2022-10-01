float x,y,d=200;
void setup(){
  size(800,700);
  x = 200;  y = 150;  d = 200;
  circle(x,y,d);
  circle(x-0.4*d,y-0.4*d,0.5*d);
  circle(x+0.4*d,y-0.4*d,0.5*d);  
  
  x = 600;  y = 100;  d = 100;
  circle(x,y,d);
  circle(x-0.4*d,y-0.4*d,0.5*d);
  circle(x+0.4*d,y-0.4*d,0.5*d);  

  x = 400;  y = 450;  d = 400;
  circle(x,y,d);
  circle(x-0.4*d,y-0.4*d,0.5*d);
  circle(x+0.4*d,y-0.4*d,0.5*d);  
}
