class smile {
  // constructor: initialization
  smile() {
    x = y = d = 100;
    vx = vy = 3;
  }
  smile(int g){
    x = random(width);
    y = random(height);
    d = random(30,100); 
    vx = random(3,5); vy = random(3,5); 
    op = g;
  }
  smile(float a, float b, int g){
    vx = a; vy = b; d = 100; 
    x = width/2;
    y = height/2;
    op = g;
  }
  // member data
  float x, y, vx, vy, d;
  int op;
  // member functions
  void cam() {
    y += vy;
    x += vx;
    if (y > height || y < 0) vy = -vy;
    if (x > width || x < 0) vx = -vx;
  }
  void bodia() {
    if (op == 0) fill(255); // white
    else if (op == 1) fill(255, 255, 0); // yellow
    else if (op == 2) fill(0,255,255); // cyan
    else fill(120); // gray
    circle(x, y, d);  // face
    strokeWeight(3);
    circle(x-0.2*d, y-0.1*d, 0.2*d); // left eye
    noFill();
    arc(x+0.2*d, y-0.1*d, 0.2*d, 0.2*d, PI, 2*PI); // right eye
    fill(255, 0, 0);
    noStroke();
    arc(x, y+0.1*d, 0.8*d, 0.4*d, 0, PI); // mouth
    fill(255);    // return to default state
    strokeWeight(1); // return to default state
    stroke(0);
  }
}
