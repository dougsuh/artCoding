class potato {
  potato() {
    x = random(100,width-100);
    y = random(100,height-100);
    d = random(100, 50);
  }
  potato(float a, float b, float c) {
    x = a;
    y = b;
    d = c;
  }
  float x, y, d;
  void chip() {
    stroke(0);
    fill(750, 105, 30);
    ellipse(x+0.2*d, y+0.3*d, 0.3*d, 0.2*d); // right leg
    ellipse(x+0.8*d, y+0.3*d, 0.3*d, 0.2*d); //left leg
    ellipse(x+0.1*d, y, 0.4*d, 0.2*d);  //left hand
    ellipse(x+0.9*d, y, 0.4*d, 0.2*d); //right hand
    ellipse(x+0.5*d, y, 0.9*d, 0.7*d); // body
    fill(0);
    line(x+0.2*d, y-0.11*d, x+0.4*d, y-0.21*d); //left eyebrow
    line(x+0.6*d, y-0.23*d, x+0.8*d, y-0.11*d); //right eyebrow
    line(x+0.3*d, y-0.1*d, x+0.4*d, y-0.05*d); //left eyes
    line(x+0.3*d, y, x+0.4*d, y-0.05*d);
    line(x+0.55*d, y-0.05*d, x+0.7*d, y-0.1*d); // right eyess
    line(x+0.55*d, y-0.05*d, x+0.7*d, y);
    fill(255, 0, 0);
    arc(x+0.5*d, y+0.1*d, 0.5*d, 0.4*d, 0, PI); // mouth
    line (x+0.25*d, y+0.1*d, x+0.75*d, y+0.1*d); //part of mouth
    fill(255);
    rect(x+0.5*d, y+0.1*d, 0.1*d, 0.1*d); //teeth  //200,210,10,10
  }
}
