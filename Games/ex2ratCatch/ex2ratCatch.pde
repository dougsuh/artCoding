ArrayList<Mice> mms;
Cat yaong, mew;
boolean start = false;
void setup() {
  size(800, 600);
  yaong = new Cat(false); //  wasd
  mew = new Cat(true);   //   arrow
  mms = new ArrayList<>();
  for (int i=0; i<10; i++) mms.add(new Mice());
}
void keyPressed() {  // for motion of cats
  char kk = key;
  yaong.keyUI(kk);
  mew.keyUI(kk);
}
void draw() {
  background(0, 255, 255);
  if (start) {
    for (int i= mms.size()-1; i>=0; i--) {
      mms.get(i).move();
      mms.get(i).show();
      yaong.ggwang(mms.get(i));
      mew.ggwang(mms.get(i));
    }
    mms.removeIf(mx -> !(mx.alive));
    yaong.show();
    mew.show();
  } // start
} // end of draw
// for game start
void mouseClicked() {  start = true; }
