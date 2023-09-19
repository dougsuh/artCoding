kimchar [] kk;
all player;
int count=0;
void setup() {
  size(1000, 800);
  kk = new kimchar[10];
  for (int i=0; i<10; i++) kk[i] = new kimchar();
  player = new all();
}
void draw() {  // 60 times in a second
  background(255, 255, 0);
  for (int i=0; i<10; i++) {
    kk[i].kim();
    player.chase(kk[i]);
  }
  player.x = mouseX;
  player.y = mouseY;
  player.bear();
}
