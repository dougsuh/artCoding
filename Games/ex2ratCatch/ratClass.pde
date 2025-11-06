class Mice {  
  Mice() {  // constructor
    x = random(200,width);    y = random(height);
    vx = random(3, 6);     vy = random(3, 6);
    d = random(6,10);  cc = 1;  if(d <8) cc = 0;
    alive = true;
  }
  Mice(float d){
    x = y = vx = vy = 0;
    this.d = d; cc = 1; alive = true;
  }
  float x, y, vx, vy, d;  // member data
  int cc;
  boolean alive;  
  void move() {     // member function
    x += vx;        y += vy;
    if (x<0 || x>width) vx *= -1;
    if (y<0 || y>height) vy *= -1;
  }
// for class in class
  void show(float xx,float yy){  
    x = xx; y = yy; 
    show();
  }
  void show() {   // member function
    if(!alive) return;  // If disappeared, no show.
    if(cc == 0) fill(255);   else fill(120);
       ellipse(x, y, d*6, d*4); // body
       ellipse(x-d*3, y-d, d*4, d*2); // head
       circle(x-2*d, y-3*d, d*3); // ear
       fill(0);
       circle(x-d*5, y-d, d); // nose
       circle(x-d*3, y-d, 0.5*d); // eye
       line(x+3*d, y, x+5*d, y); // tail
  } // show
} // end of class Mice
