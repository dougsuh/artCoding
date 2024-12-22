int i=0;
pp player;
en enemy1, enemy2;
char cameraType = 'b'; // 2024. 6. 5
void setup() {
  size(600, 600, P3D); // 3D space
  player = new pp();
  enemy1 = new en();
  enemy2 = new en(1);
  frameRate(20);
}
void draw(){
  i++;
  background(0);
  lights(); // default light
  road();
  enemy1.display(i);
  enemy2.display(i);
  player.display(i,enemy1);  
  if(cameraType == 'f')  // 3rd view(FPS)
    camera(player.x,player.y-100,player.z+150, 0,0,0, 0,1,0);
 //  bird's eye view
  else camera(200, -200, 1200, 0, 0, 500, 0, 1, 0);  
}
void keyPressed(){
  cameraType = key;
}
void road(){
  fill(120,120,0);
  box(100,10,2000);
}
