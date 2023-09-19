class kimchar {
  kimchar() {
    x = random(width);
    y = random(height);
    d = random(40, 80);
    vx = random(3, 6);
    vy = random(3, 6);
    a1 = new all();
    a2 = new all();
    pp = new potato();
  }
  kimchar(float a, float b, float c) {
    x = a;
    y = b;
    d = c;
    vx = random(3, 6);
    vy = random(3, 6);
    a1 = new all();
    a2 = new all();
    pp = new potato();
  }
  float x, y, d, vx, vy;  
  // class as the member data
  all a1,a2;
  potato pp;
  // member functions
  void jar() {
    y += vy;
    x += vx;
    if (y > height || y < 0) vy = -vy;
    if (x > width || x < 0) vx = -vx;
  }
  void kim(int ddd){// called at every 0.5 second
    a1.x = x+d*3- random(d);
    a1.y = y;
    a2.x = x-0.1*d - random(d);
    a2.y = y;
    pp.x = x+d- random(d);
    pp.y = y-d;
    kim();
  }
  void kim() {
    a1.bear();    
    a2.bear();
    pp.chip();
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
