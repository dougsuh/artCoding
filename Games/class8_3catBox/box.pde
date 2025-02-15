class Box {
  Box(float x, float y) {
    this.x = x;
    this.y = y;
    alive = true;
    points = (int)(random(49.9)/10);
    w = h = 60;
  }
  float x, y, w, h;
  int points;
  boolean alive;
  void show() {
    if (!alive) return;
    if (points == 0) fill(255, 100, 100);
    else if (points == 1) fill(100, 255, 100);
    else if (points == 2) fill(100, 100, 255);
    else if (points == 3) fill(255, 255, 0);
    else fill(255, 0, 255);
    rect(x, y, w, h);
    fill(0);
    text(points, x+w/3, y+h/1.5);
  }
}
