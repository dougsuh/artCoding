float x,y;  // global x, y
void setup(){
  size(800,400);
  x = 200;     y = 100;
  f1();
  f2(x+200,y+200);
  y += 100;
  f1();  // Where is it drawn?
}
void f1(){
  fill(255);     // white
  circle(x,y,100);      circle(x+50,y,50);
}
void f2(float x, float y){  // local x, y
  fill(255,0,0);  // red
  circle(x,y,100);  circle(x+50,y,50);
  x = 400;
}
