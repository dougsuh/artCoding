// Sreyleak's iPad
class srey {
  srey(float a, float b, float c) { // suh
    x = a; y = b; d = c;     // suh
    vx = random(-3, 3);
    vy = random(-2, 2);
    sn = new seng();// suh221
    sk = new sky(x,y,50); // suh 221
    hk = new hong(); // suh221
  }
void update() {
    x += vx;
    y += vy;
    if(x<0 || x>width-200) vx =  -vx;
    if(y<0 || y>height-200) vy =  -vy;  
    sn.x = x+350; // suh221
    sn.y = y+300; // suh221  
    sk.x = x+250; // suh221
    sk.y = y+150; // suh221
    hk.a = x+ 50; // suh221
    hk.b = y+150; // suh221
  }
  //member data
  float x, y, vx, vy, d;// suh
  seng sn; // suh221
  sky sk; // suh 221
  hong hk; // suh 221
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
    
    sn.home();//suh221
    sk.skyShow(); // suh221
    hk.fred(); // suh221
  }
}
