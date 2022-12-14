
class Siha {
  Siha() {   };
  Siha(float p, float q, float r) {
    x = p;     y = q;     d = r;
    vx = random(-3,3); vy = random(-2,2);
  }
  float x, y, d, vx, vy;
  void act(){
    x += vx;  y += vy;
    if(x>width) x=0;
    if(x<0) x=width;
    if(y>height) y=0;
    if(y<0) y = height;
  }
  void Life() {
    ellipse(x, y, d, d/3*2);
    circle(x-d/5, y-d/6, d/5);
    arc(x+d/5, y-d/6, d/5, d/5, PI, 2*PI);
    arc(x, y, d*2/3, d/5, 0, PI);
  }
}
