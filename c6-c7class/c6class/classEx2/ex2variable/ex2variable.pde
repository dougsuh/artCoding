float x, y, d; 
void setup(){
  size(600,300);
  x = 100;  y = 100;  d = 10;
  ellipse(x,y,d*10,d*6);
  circle(x-d*2,y-d*1.5,d*2);
  arc(x+d*2,y-d*1.5,d*2,d*2,PI,2*PI);
  arc(x,y,d*6,d*2,0,PI);
  
  x = 300;  y = 150;  d = 15;
  ellipse(x,y,d*10,d*6);
  circle(x-d*2,y-d*1.5,d*2);
  arc(x+d*2,y-d*1.5,d*2,d*2,PI,2*PI);
  arc(x,y,d*6,d*2,0,PI);
  
  x = 500;  y = 200;  d = 8;
  ellipse(x,y,d*10,d*6);
  circle(x-d*2,y-d*1.5,d*2);
  arc(x+d*2,y-d*1.5,d*2,d*2,PI,2*PI);
  arc(x,y,d*6,d*2,0,PI);  
}
