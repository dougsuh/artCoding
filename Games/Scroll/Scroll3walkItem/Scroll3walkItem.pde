Dasher mario;
Barrier bb;
int start;
void setup(){
  size(1200,500);
  mario = new Dasher();
  bb = new Barrier();
  start = 0;
}
void draw(){
  background(0,255,255);
  fill(120);
  rect(0,mario.Y0,width,100);
  mario.update();
  mario.show();
  if(start == 1) bb.update();
  bb.show();
  mario.checkCollision(bb);
}
void keyReleased(){
  if(key == 'j') mario.jump();
  else if(key == 32) start = 1;
}
