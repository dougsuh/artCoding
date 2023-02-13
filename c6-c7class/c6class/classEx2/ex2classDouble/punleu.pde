class punleu {
  // constructor
  punleu(float a, float b) {
    x = a;
    y = b;
    vx = random(-3,3);
    vy = random(-2,2);
  }
  // member data
  float x, y, vx, vy;
  // member function
  void update(){
   x += vx;
   y += vy;
   if(x<0 || x>width) vx = - vx;
   if(y<0 || y>height) vy = - vy;
  }
  void punleuShow() {
    fill(0, 0, 255);
    ellipse(x, y+30, 200, 210);
    fill(255);
    // eye
    ellipse(x-40, y, 50, 50);
    ellipse(x+30, y, 50, 50);
    // black eye
    fill(0);
    ellipse(x-40, y, 20, 20);
    ellipse(x+30, y, 20, 20);
    fill(0, 255, 0);
    //mouth
    arc(x, y+75, 80, 50, 0, 3.14);
    fill(0, 255, 0);
  }
}
