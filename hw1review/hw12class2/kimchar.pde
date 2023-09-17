class kimchar {
  kimchar() {
    x = random(width);
    y = random(height);
    d = random(20, 5);
    vx = random(3, 6);
    vy = random(3, 6);
  }
  kimchar(float a, float b, float c) {
    x = a;
    y = b;
    d = c;
    vx = random(3, 6);
    vy = random(3, 6);
  }
  float x, y, d, vx, vy;
  // member functions
  void jar() {
    y += vy;
    x += vx;
    if (y > height || y < 0) vy = -vy;
    if (x > width || x < 0) vx = -vx;
  }
  void kim() {
    strokeWeight(d*0.05);

    fill(#3087D1);

    arc(x+1.8*d, y+2.2*d, d*0.55, d*1.5, 0, PI); //feet

    arc(x+2.3*d, y+2.2*d, d*0.55, d*1.5, 0, PI);

    //feet

    fill(0, 200, 155);

    rect(x+0.7*d, y+0.3*d, d*0.8, d*1.8); //beg

    fill(#BEBF36);

    ellipse(x+2*d, y+1*d, d*2, d*3);

    // body

    ellipse(x+2.5*d, y+0.5*d, d*1.5, d*0.8); //eye

    fill(0, 255, 0);

    ellipse(x+2.5*d, y+0.5*d, d*1.2, d*0.5); //glasses

    //eye


    arc(x+1.8*d, y+2.2*d, d*0.55, d*1.5, 0, PI); //feet

    arc(x+2.3*d, y+2.2*d, d*0.55, d*1.5, 0, PI);

    //feet

    fill(0, 200, 155);

    rect(x+0.7*d, y+0.3*d, d*0.8, d*1.8); //beg

    fill(#BEBF36);

    ellipse(x+2*d, y+1*d, d*2, d*3);

    // body

    ellipse(x+2.5*d, y+0.5*d, d*1.5, d*0.8); //eye

    fill(0, 255, 0);

    ellipse(x+2.5*d, y+0.5*d, d*1.2, d*0.5); //glasses

    //eye
  }
}// end of class
