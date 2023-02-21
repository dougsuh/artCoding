class hong {
  void dot() {
    fill(0);
    circle(a-100*ss, b-100*ss, 20*ss); // suh
  }
  hong() {
    a = width/2;
    b = random(0, height);
    va = random(-3, 3); // suh
    vb = random(-2, 2); // suh
    float xx = random(4); // suh
    if(xx < 1) cc = 0;  // suh
    else if(xx<2) cc = 1; // suh
    else if(xx<3) cc = 2; // suh
    else cc = 3;     // suh
    ss = random(0.5,0.7); // suh
  };
  hong(float p, float q, int c) {
    a = p;
    b=q;
    cc =c;
    va = random(-3, 3);
    vb = random(-2, 2);
    ss = random(0.5,1.2); // suh
  }
  float a, b, va, vb;
  float ss; // suh
  int cc;
  void move() {
    a += va;
    b += vb;
    if (a<0 || a>width) va = -va;
    if (b<0 || b>height) vb = -vb;
  }
  void fred() {//among us
    //box
    {
      stroke(255);
      strokeWeight(5);
      fill(0);
      if (cc == 1) fill(255, 255, 0);
      else if (cc == 2) fill(0);
      else if (cc == 3) fill (0, 98, 25);
      else fill (0, 0, 255);
    }
    rect(a-150*ss, b-160*ss, 150*ss, 150*ss, 18*ss);// suh
    //leg
    rect(a-65*ss, b, 60*ss, 100*ss, 38*ss);// suh
    rect(a, b, 60*ss, 100*ss, 38*ss);// suh

    //face
    ellipse(a, b-100*ss, 200*ss, 300*ss);// suh
    fill(173, 216, 230);
    ellipse(a+50*ss, b-150*ss, 120*ss, 60*ss);// suh
    fill(135, 206, 235);
    ellipse(a+70*ss, b-160*ss, 50*ss, 10*ss);// suh
  }
}
