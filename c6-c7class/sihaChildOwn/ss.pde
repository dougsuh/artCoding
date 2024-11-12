class Siha {
  Siha() {
    x = 100;
    y = 200;
    d = 100;
  };
  Siha(float p) { // Q1
    x=p;
    y=random(height);
    d = 100;
  };
  Siha(float p, float q, float r) {
    x = p;
    y = q;
    d = r;
  }
  float x, y, d;
  void show() {}
  void drawFace() {
    fill(255);
    ellipse(x, y, d, d/3*2);
    circle(x-d/5, y-d/6, d/5);
    arc(x+d/5, y-d/6, d/5, d/5, PI, 2*PI);
    arc(x, y, d*2/3, d/5, 0, PI);
  }
}
