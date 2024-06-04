int i=0;
pp player;
en enemy1, enemy2;
char cameraType = 'f'; // 2024. 6. 5
void setup() {
  size(600, 400, P3D); // 3D space
  player = new pp();
  enemy1 = new en();
  enemy2 = new en(1);
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
    camera(i,-50,0,500,0,0,-1,0,0);
 //  bird's eye view
  else camera(0, -200, 50, 250, 0, 0, -1, 0, 0);  
}
void keyPressed(){
  cameraType = key;
}
void road(){
  fill(120,120,0);
  translate(0,50,0);
  box(2000,10,100);
  translate(0,-50,0);
}
