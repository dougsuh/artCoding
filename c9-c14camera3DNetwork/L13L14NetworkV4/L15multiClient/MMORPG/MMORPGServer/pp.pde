class player {
  player(int id, boolean r) {
    x = random(width);
    y = random(height);
    ID = id;
    state = 0;
    red = r;
  }
  float x, y;
  int state, ID;
  boolean red;
  void move(int kk) {
    if (state != 2) {
      if (kk == 0 && state == 0) state = 1;     // 'b'
      else if (kk == 1) x -= 5;   // 'a'
      else if (kk == 2) y -= 5;    // 'w'
      else if (kk == 3) y += 5;    // 's'
      else if (kk == 4) x += 5;    // 'd'
      else return;
      if (x<0) x = 0;
      if (x>width) x = width;
      if (y<0) y = 0;
      if (y>height) y = height;
    }
  }
  boolean check(float xx, float yy) {
    if(state == 2) return false;
    if (dist(x, y, xx, yy) < 65) {
      state = 2;
    }
    if (state == 2) return true;
    else return false;
  }
  void display() {
    circle(x, y, 30);
  }
}
