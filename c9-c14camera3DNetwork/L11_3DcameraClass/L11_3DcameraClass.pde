int i=0;
pp player;
en enemy1, enemy2;
void setup() {
  size(600, 400, P3D); // 3D space
  player = new pp();
  enemy1 = new en();
  enemy2 = new en(1);
}
void draw(){
  i++;
  background(0);
  noFill();
  enemy1.display(i);
  enemy2.display(i);
  player.display(i,enemy1);
  // 3rd view(FPS)
 // camera(i,-50,0,500,0,0,-1,0,0);
 //  bird's eye view
  camera(0, -200, 100, 250, 0, 0, -1, 0, 0);  
}
