class brown {
  brown() {
  };
  brown(float xx, float yy, int ii) {
    px = xx;
    py = yy;
    option = ii;
  }

  float x, y, px, py;
  int option;
  color c1, c2;
  void newmove() {
    x = px + random(-5, 5);
    y = py + random(-5, 5);
    switch(option) {
    case 1:
      c2 = color(random(100, 255), 0, random(100, 255));
      break;
    case 2:
      c2 = color(0,random(100, 255), random(100, 255));
      break;
    case 3:
      c2 = color(random(100, 255), random(100, 255),0);
      break;
    }
    stroke(c2);
    line(px, py, x, y);
    px = x; 
    py = y;
  }
}
