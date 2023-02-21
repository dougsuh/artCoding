class kem {
  // constructor
  kem() {
    e = random(width); // pick up one random variable [0,width]
    f = random(height); // pick up one random variable [0,height]
    d = 100;
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
  void rina() {
    fill(0);
    circle(e + d*0.50, f - d*1.30, d*0.6);
    circle(e + d, f - d*1.30, d*0.6);

    fill(255);
    circle(e + d*0.75, f - d, d);

    fill(0);
    circle(e + d*0.50, f - d*1.10, d/2 );
    circle(e + d, f - d*1.10, d/2 );

    fill(255);
    circle(e + d*0.50, f - d*1.10, d*0.15);
    circle(e + d, f - d*1.10, d*0.15);
    fill(0);
    circle(e + d*0.75, f - d*0.80, d*0.20);
  }
}// end of class
