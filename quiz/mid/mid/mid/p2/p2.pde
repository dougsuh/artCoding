void setup(){
  size(400,250);
  // object 1
  mars(250,100,100);
  mars(100,150,50);
}
void mars(float x,float y, float d){
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
