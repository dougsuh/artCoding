Box [] bb;
Cat yaong, mew;
boolean start = false;
int frames = 0, n;
int pointSum = 0;
void setup() {
  size(800, 300);
  textSize(40);
  yaong = new Cat(false); //  wasd
  mew = new Cat(true);   //   arrow

  bb = new Box[40];
  for (int i=0; i<40; i++)
    bb[i] = new Box((1.5+i%10)*60, (0.5+i/10)*60);
}
void draw() {
  background(0);
  for (int i=0; i<40; i++){
    bb[i].show();
    yaong.ggwang(bb[i]);
    mew.ggwang(bb[i]);
  }
  yaong.show();
  mew.show();
}
void keyPressed() {
  char kk = key;
  yaong.keyUI(kk);
  mew.keyUI(kk);
}
