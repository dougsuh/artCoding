class Cat {
  Cat(boolean kk) {
    x = 50; y = height-50;
    vx = vy = 0;
    d = 10;
    moveKey = kk; // wasd or arrows
    nCatch = 0;
    if(!kk){ x = width - 50;y = 50;}
    myMice = new ArrayList<>(); // no mice yet
  }
// member data
  float x, y, vx, vy, d;  
  ArrayList<Mice> myMice;
  boolean moveKey;
  int nCatch;
void ggwang(Mice mm) {
    if(!mm.alive) return;
    if (dist(x, y, mm.x, mm.y)<5*d) {
      myMice.add(new Mice(4));
      nCatch++; // = myMice.size( )
      mm.alive = false;
    }
 }
 void show() {
    fill(255, 255, 0);
    circle(x-3.5*d, y-3.5*d, 2*d); // ear
    circle(x+3.5*d, y-3.5*d, 2*d); // ear
    circle(x, y, d*10); // body
    fill(0);
    rect(x-3*d, y-2.5*d, 6*d, 0.5*d);
    rect(x-3*d, y-1.5*d, 6*d, 0.5*d);
    circle(x-2*d, y, d);  // eye
    circle(x+2*d, y, d);  // eye
    rect(x-0.25*d, y, 0.5*d, d);  // nose
    fill(255, 0, 0);
    arc(x, y+d*2.5, 4*d, 3*d, PI, 2*PI);
    for(Mice mm : myMice){
      int i = myMice.indexOf(mm);
      mm.show(x-4*d+1.5*d*i,y+5*d);
    }
  } // show
  void keyUI(char kk) {
    if (moveKey) {
      if (kk == 'w') y -= 5;
      else if (kk == 'a') x -= 5;
      else if (kk == 's') y += 5;
      else if (kk == 'd') x += 5;
    } else {
      if (key == CODED) {
        if (keyCode == UP) y -= 5;
        else if (keyCode == LEFT) x -= 5;
        else if (keyCode == DOWN) y += 5;
        else if (keyCode == RIGHT) x += 5;
      }
    }
  } // keyUI
}  // end of class Cat
