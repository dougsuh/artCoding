class seng {
  // constructor
  seng() {
    x = random(width); // pick up one random variable [0,width]
    y = random(height); // pick up one random variable [0,height]
    d = random(50,200);
    vy = random(-3,3);
  }
  // member data
  float x, y, d,vy;
  // member function
  void aun(){
    y += vy;
    if(y<0) y = height;
    if(y>height) y = 0;
  }
  // home
  void home () {
    fill(255, 0, 0);
    quad(x-d*1.9, y-d*1.7, x-d*1.9, y-d*1.2, x-d*1.2, y-d*1.2, x-d*1.2, y-d*1.7);
    fill(128, 128, 128);
    quad(x-d*1.8, y-d*1.9, x-d*2, y-d*1.7, x-d*1.1, y-d*1.7, x-d*1.3, y-d*1.9);
    fill(128, 128, 128);
    quad(x-d*1.3, y-d*2.1, x-d*1.3, y-d*1.9, x-d*1.2, y-d*1.8, x-d*1.2, y-d*2.1);
    fill(255, 255, 255);
    quad(x-d*1.5, y-d*1.6, x-d*1.5, y-d*1.4, x-d*1.3, y-d*1.4, x-d*1.3, y-d*1.6);   //window
    line (x-d*1.4, y-d*1.6, x-d*1.4, y-d*1.4);
    line(x-d*1.5, y-d*1.5, x-d*1.3, y-d*1.5);

    quad(x-d*1.8, y-d*1.5, x-d*1.8, y-d*1.2, x-d*1.6, y-d*1.2, x-d*1.6, y-d*1.5);   //door
    line(x-d*1.7, y-d*1.5, x-d*1.7, y-d*1.2);
    fill(0, 128, 0);
    triangle (x-d*2.1, y-d*1.4, x-d*2.3, y-d*1.4, x-d*2.2, y-d*1.6);  //tree
    line (x-d*2.2, y-d*1.4, x-d*2.2, y-d*1.2);
    triangle (x-d, y-d*1.4, x-d*0.9, y-d*1.6, x-d*0.8, y-d*1.4);
    line (x-d*0.9, y-d*1.4, x-d*0.9, y-d*1.2);
  }
}// end of class
