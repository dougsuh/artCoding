class hero {
  hero() {
    x = width/4;
    y = height/2;
    d=10;
    cc = 0;
  }
  float x, y, d;
  int cc;
  void update(float xx, float yy) {
    if (yy<50 && xx<100) {
      if (xx<50) cc = 1;
      else cc = 2;
    } else {
      x = xx;
      y = yy;
    }
  }
  void show() {
    stroke(0);
    if (cc==0) fill(255);
    else if (cc==1) fill(255, 0, 0);
    else fill(0, 255, 0);
    ellipse(x, y, d*12, d*8);
    arc(x+2*d, y-d, d*3, d*1.5, PI, PI*1.9); // right eye
    arc(x, y+d, d*8, d*3, 0, PI); // mouth
    fill(255);
    ellipse(x-2*d, y-d, d*3, d*1.5);
    fill(0);
    circle(x-2*d, y-d, d*1);
  }
}
