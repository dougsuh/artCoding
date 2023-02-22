Dasher mario;
Barrier bb;
void setup(){
  size(1200,500);
  mario = new Dasher();
  bb = new Barrier();
}
void draw(){
  background(0,255,255);
  rect(0,mario.Y0,width,100);
  mario.update();
  mario.show();
  bb.update();
  bb.show();
  mario.checkCollision(bb);
}
void keyReleased(){
  if(key == 'j') mario.jump();
}
