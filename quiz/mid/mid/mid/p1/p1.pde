void setup(){
  size(400,250);
  // object 1
  float x,y,d;
  x = 250; y = 100; d=100;
  circle(x,y,d);
  circle(x-d/4*3,y,d/2);
  circle(x+d/4*3,y,d/2);  
  // object 2
  x = 100; y = 150; d=50;
  circle(x,y,d);
  circle(x-d/4*3,y,d/2);
  circle(x+d/4*3,y,d/2);  
}
/*void setup(){
  size(400,250);
  // object 1
  circle(250,100,100);
  circle(180,100,40);
  circle(320,100,40);  
  // object 2
  circle(100,150,50);
  circle(65,150,20);
  circle(135,150,20);
}*/
