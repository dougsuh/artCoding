class Dasher {
  Dasher() {
    x = width/2;
    vmax = 8; // 3m m/sec
    g = 10;    // m/sec^2
    dt = 1./frameRate;
    Y0 = height - 100;
    y = Y0;
    life = 3;
    da = new walk();
  }
  float x, y, vy, vmax, Y0, g, dt;
  int life;
  walk da;
  void jump() { // if 'j' is hit
    vy = -vmax;
  }
  void checkCollision(Barrier xx) {
    if (y > (xx.y - xx.H/4)) {
      if (x>xx.x && x<xx.x+xx.W) {
        life--;
        y = xx.y - xx.H;        
      }
    }
  }
  void update() {
    vy += g * dt;
    y += vy;
    if (y > Y0) {
      y = Y0;
      vy = 0;
    }
  }
  void show() {
    fill(255);
    // circle(x, y-50, 100);
    da.display(x,y-160*da.ss);
    for(int i=0;i<life;i++){
      fill(255,0,0);
      circle(60+70*i,70,50);
    }
  }
}// end of class
