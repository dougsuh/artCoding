void setup(){
  size(400,250);
  float xy;
  xy = khu(100,100);
  println(xy);
  xy = khu(300,150);
  println(xy);
}
float khu(float x,float y){
 circle(x,y,150);
 x = x-30;
 y = y-20;
 circle(x,y,50);
 x += 60;
 circle(x,y,50);
 return x+y;
}
