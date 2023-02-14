class kem {
  // constructor
  kem() {
    e = random(width); // pick up one random variable [0,width]
    f = random(height); // pick up one random variable [0,height]
    d = 50;
    vy = random(-5,5);
  }
  // member data
  float e, f, d, vy=0;
  // member function
  void aun() {
    f += vy;
    if (f<0) f = height;
    if (f>height) f = 0;
  }
  // home
  //kem
  void rina() {
    fill(0);
    circle(e + 50, f - 130, d+10);
    circle(e + 100, f - 130, d+10);

    fill(255);
    circle(e + 75, f - 100, d + 50);

    fill(0);
    circle(e + 50, f - 110, d-2 );
    circle(e + 100, f - 110, d-2 );

    fill(255);
    circle(e + 50, f - 110, d - 35);
    circle(e + 100, f - 110, d - 35);
    fill(0);
    circle(e + 75, f - 80, d - 30);
  }
}// end of class
