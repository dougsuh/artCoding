// DYSuh Feb. 15, 2023
Ball myball;
Bat mybat;
Bricks [] bbs;
int nBricks = 8;
float bw;
void setup(){
  size(400,800);
  myball = new Ball();
  mybat = new Bat(height-100,100,30);
  bbs = new Bricks[nBricks];
  bw = width/nBricks;
  for(int i=0;i<nBricks;i++){
    bbs[i] = new Bricks(bw*i,bw,20);
  }
}
void draw(){
  background(0,255,255);
  myball.show();
  mybat.show();
  myball.move();
  myball.checkBat(mybat);
  for(int i=0;i<nBricks;i++){
    bbs[i].show();
    myball.checkBricks(bbs[i]);
  }  
  for(int i=0;i<nBricks;i++){
    if(myball.checkBricks(bbs[i])) break;
  }  
}
