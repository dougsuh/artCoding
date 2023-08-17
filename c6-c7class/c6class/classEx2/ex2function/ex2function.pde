void setup(){
  size(600,300);
  Life(100,100,10);
  Life(300,150,15);
  Life(500,200,8);
}
void Life(float x,float y, float d){
  ellipse(x,y,d*10,d*6);
  circle(x-d*2,y-d*1.5,d*2);
  arc(x+d*2,y-d*1.5,d*2,d*2,PI,2*PI);
  arc(x,y,d*6,d*2,0,PI);  
}
