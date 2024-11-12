class Siha {
  Siha() {
    x = random(100,width-100);
    y = random(100,height-100);
    d = random(80,120);
    vx = random(3,5);
    vy = random(3,5);
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
  float x, y, d, vx, vy;
  void show() {}
 void move(){
   x += vx;
   y += vy;
   if(x<0 || x>width) vx = -vx;
   if(y<0 || y>height) vy = -vy;
 }
  void drawFace() {
    fill(255);
    ellipse(x, y, d, d/3*2);
    circle(x-d/5, y-d/6, d/5);
    arc(x+d/5, y-d/6, d/5, d/5, PI, 2*PI);
    arc(x, y, d*2/3, d/5, 0, PI);
  }
}
