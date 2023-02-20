class la {
  // constructor
  la(float a, float b) {
    x = a;
    y = b;
  }
  // member data
  float x, y;
  // member function
  void panha(){
    x += random(4,15);
    if(x>width) x = 0;
  }
  //member 1 : hamburger
  void hamburger() {
    fill(200, 100, 50);
    ellipse(x, y+25, 200, 90);
    fill(46, y, 40);
    circle(x, y+10, 5);
    fill(46, 40, 40);
    circle(x+50, y+10, 5);
    fill(40, 40, 40);
    circle(x-60, y+20, 5);
    fill(40, 40, 40);
    circle(x-20, y+30, 5);
    fill(40, 40, 40);
    circle(x+30, y+30, 5);
    fill(255, 255, 0);
    ellipse(x, y+65, 200, 20);
    fill(100, 170, 0);
    ellipse(x, y+80, 180, 20);
    fill(200, 100, 50);
    ellipse(x, y+80, 190, 70);
    fill(255, 0, 0);
    ellipse(x, y+90, 170, 20);
  }
}// end of class
