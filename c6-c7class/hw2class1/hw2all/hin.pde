// Sreyleak's iPad
class srey {
  srey(float a, float b, float c) { // suh
      x = a; y = b; d = c;     // suh

    vx = random(-3, 3);
    vy = random(-2, 2);
  }
void update() {
    x += vx;
    y += vy;
    if(x<0 || x>width) vx =  -vx;
    if(y<0 || y>width) vy =  -vy;
    
  }
  //member data
  float x, y, vx, vy, d;// suh
  //member function
  void sreyShow() {
    fill(0, 0, 255);
    stroke(0);//suh
    strokeWeight(1);//suh
    fill(0, 0, 0);
    rect(x, y, 300*d, 220*d, 25*d);
    fill(128);
    rect(x+10*d, y+10*d, 270*d, 200*d, 28*d);
    circle(x+290*d, y+105*d, 15*d);
    rect(x+3*d, y+80*d, 3*d, 50*d);
  }
}
