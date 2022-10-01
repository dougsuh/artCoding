CannonBall cb; float x,y,vx,vy;
void setup(){
  size(1200,600);  
  cb = new CannonBall(50,50,6,8);
}
void draw(){
  background(255);
  
  cb.move();
}
