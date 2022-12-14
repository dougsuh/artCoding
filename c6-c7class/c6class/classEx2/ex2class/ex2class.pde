Siha a, b, c;
void setup() {
  size(600, 300);
  a = new Siha(100, 100, 100);
  b = new Siha(250, 150, 150);
  c = new Siha(400, 200, 200);
  a.Life();   b.Life();   c.Life();
}
class Siha {
  Siha() {   };
  Siha(float p, float q, float r) {
    x = p;      y = q;     d = r;
  }
  float x, y, d;
  void Life() {
    ellipse(x, y, d, d/3*2);
    circle(x-d/5, y-d/6, d/5);
    arc(x+d/5, y-d/6, d/5, d/5, PI, 2*PI);
    arc(x, y, d*2/3, d/5, 0, PI);
  }
}
