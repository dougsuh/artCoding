class yang {
  yang() {
    x = width/2;
    y = height/2;
    d = 20;
    op =0;
    vx = random(3, 5);
    vy = random(3, 5);
    kkk = new kimchar(x+20*d,y-5*d,d*10); // sprint 3
  };
  yang(float dd) {
    d=dd;
    x = 300;
    y = 200;
    op =1;
    vx = random(3, 5);
    vy = random(3, 5);
    kkk = new kimchar(x+20*d,y-5*d,d*10);// sprint 3
  };
  float x, y, d, vx, vy;
  kimchar kkk;// sprint 3
  int op;
  void display() {
    kkk.x = x;// sprint 3
    kkk.y = y;// sprint 3
    kkk.kim();// sprint 3
    fill(#F20717);
    circle(x+2*d, y-5*d, d*25);
    fill(#FFF7F8); //eye
    ellipse(x-2*d, y-10*d, d*5, d*5);
    ellipse(x+5*d, y-10*d, d*5, d*5);
    fill(255);
    ellipse(x-2*d, y-10*d, d*5, d*5);
  }
  void chan() {
    y += vy;
    x += vx;
    if (y > height || y < 0) vy = -vy;
    if (x > height || x < 0) vx = -vx;
  }
}
