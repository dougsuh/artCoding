class en {
  en() {
    OP = 0;
    x = 0;
    y = -50;
    z = 0;
    s = 3;
  };
  en(int i) {
    OP = i;
    x = -80;
    y = -60;
    z = 0;
    s = 3;
  };
  float x, y, z, s;
  int OP;
  color cc;
  // rotate and locate the character
  void display(int i) {
    pushMatrix();
    translate(x, y, z);
    if (OP==0) rotateZ(radians(i));
    show(); // show the character
    if (OP==0)rotateZ(radians(-i));
    popMatrix();    
  }
  // show the character
  void show() {
    noStroke();
    pushMatrix();
    translate(0, 5*s, 0);
    if (OP == 0) fill(255, 0, 0);
    else fill(0, 255, 0);
    box(20*s, 15*s, 10*s);
    popMatrix();

    pushMatrix();
    translate(-5*s, 3*s, 5*s);
    fill(255);
    box(3*s, 3*s, s);
    popMatrix();

    pushMatrix();
    translate(5*s, 3*s, 5*s);
    fill(255);
    box(3*s, 3*s, s);
    popMatrix();

    pushMatrix();
    translate(0, -7*s, 0);
    fill(255, 100, 150);
    cone(3*s, 10*s);
    popMatrix();

    pushMatrix();
    translate(0, -13*s, 0);
    fill(255, 255, 0);
    sphere(2*s);
    popMatrix();
  }
  void cone(float r, float h) {
    int sides = 24;
    float angleStep = TWO_PI / sides;

    beginShape(TRIANGLE_FAN);
    vertex(0, -h / 2, 0);
    for (int i = 0; i <= sides; i++) {
      float x = cos(i * angleStep) * r;
      float z = sin(i * angleStep) * r;
      vertex(x, h / 2, z);
    }
    endShape();
  }
}
