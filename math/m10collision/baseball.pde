class bas {
  bas() {  init();   }
  bas(float a, float b, float c, float d) {
    m1 = a;      m2 = b; 
    v1 = c;      v2=d;
    init();
  }
  float m1, m2, v1, v2, x1, x2;
  boolean yes = false; 
  float r;
  int dt;
  void update() {
    x1 += v1;     x2 += v2;
    if (x2-x1 < 100) collide();  
    fill(2550/m1, 2550/m1, 0);   
    square(x1-50, 50, 100);
    fill(0, 2550/m2, 2550/m2);    
    ellipse(x2-(50-50*r), 100, 100*r,100/r);
  }
  void collide() {
    if(yes == false){
       v2 = v1;   
       yes = true;
       dt = 0;
    } else {
      dt++;
      if(dt<30) r *= 0.98;
      else if(dt<60) r /= 0.98;
      else { r = 1.0; v2 *= 1.5;}    }
  }
  void init() { 
    x1 = 0; 
    x2 = width/4; 
    yes = false;
    r = 1;
  }
}
