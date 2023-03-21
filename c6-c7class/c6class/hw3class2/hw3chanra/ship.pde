//member 2 : titanic ship
class chan {
  // constructor to initialize member data
  chan(float a, float b) {
    x = a;  y = b;
    vx = random(2,5); 
    vy = random(1); 
  };  
  chan(float a, float b, float c) {
    x = a;  y = b;
    vx = c; 
    vy = random(1); 
  };
  // member data
  float x, y, vx, vy;
  // member function
  void cloud(){
    fill(255);
    circle(x-20,y-50,10);
    circle(x-5,y-70,20);
  }
  void pov(){
    x -= vx;  // go left
    y += vy;  // go left
    if(x<0) x = width;
    if(y>height) y = 0;
  }
  void ship() {
    fill(255, 0, 0);
    quad (x-70, y, x-60, y+20, x+60, y+20, x+70, y);
    quad (x-60, y+20, x-50, y+30, x+60, y+30, x+60, y+20);
    fill(255, 255, 255);
    quad (x-50, y-20, x-50, y, x+50, y, x+50, y-20);
    quad (x, y-30, x, y-20, x+20, y-20, x+20, y-30);
    quad (x-30, y-30, x-30, y-20, x-10, y-20, x-10, y-30);
    quad (x-30, y-30, x-30, y-40, x-10, y-40, x-10, y-30);
    fill(0, 191, 255);
    circle (x-50, y+10, 5);
    circle (x-40, y+10, 5);
    circle (x-30, y+10, 5);
    //if(vx>1 && vy>1) 
    cloud();
   //circle(x,y,30); // for check the center.
  }
} // end of class
