float x,y,r;
float d;
void setup(){
  size(600,600);
  x = random(width);
  y = random(width);
  r = 50;
}
void draw(){
  background(255,255,0);
  circle(x,y,2*r);
  if(mousePressed){
    d = distance(mouseX,mouseY,x,y);
    if(d<r) r *= 0.5;
  }
}
float distance(float a1, float b1, float a2, float b2){
  float dis;
  dis = sqrt((a1-a2)*(a1-a2)+(b1-b2)*(b1-b2));
  return dis;
}
