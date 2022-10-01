class bil {
  bil() {  init();   }
  bil(float a, float b, float c, float d) {
    m1 = a;      m2 = b; 
    v1 = c;      v2=d;
    init();
  }
  float m1, m2, v1, v2, x1, x2;
  boolean yes = false; 
  void update() {
    x1 += v1;     x2 += v2;
    fill(255); 
    rect(0, 150, 500, 50);
    if (x2-x1 < 100 && !yes) collide();  
    fill(2550/m1, 2550/m1, 0);   
    circle(x1, 100, 100);
    fill(0, 2550/m2, 2550/m2);    
    circle(x2, 100, 100);
  }
  void collide() {
    v2 = 2*m1/(m1+m2)*v1;   
    v1 = (-m2+m1)/(m1+m2)*v1;
    yes = true;
  }
  void init() { 
    x1 = 0; 
    x2 = width/2; 
    yes = false;
  }
}
