class Cat {
  Cat(boolean kk) {
    x = x0 = 50;
    y = height/2;
    vx = vy = 0;
    d = 5;
    points = 0;
    moveKey = kk;
    if (!kk) x = x0 = width - 50;  // arrow
  }
  float x, y, vx, vy, d, x0;  // member data
  boolean moveKey;
  int points;
  void ggwang(Box bb) {
    if (bb.alive) {
      if (dist(x, y, bb.x+bb.w/2, bb.y+bb.h/2) < 2*d) {
        points += bb.points;
        bb.alive = false;
      }
    }
  }
  void show() {
    fill(255, 255, 0);
    circle(x-3.5*d, y-3.5*d, 2*d);// ear
    circle(x+3.5*d, y-3.5*d, 2*d);// ear
    circle(x, y, d*10); // body
    fill(0);
    rect(x-3*d, y-2.5*d, 6*d, 0.5*d);
    rect(x-3*d, y-1.5*d, 6*d, 0.5*d);
    fill(255);
    text(points,x0,height/2);
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
  }
}//class
