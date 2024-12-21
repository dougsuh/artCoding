class boxman {
  boxman(float ss) {
    s = ss;
    x = 3*width/4;
    y = height/2;
    z = 0;
  }
  float x, y, z, s;
  void update() {
    x += 2;
    if (x>width) x = 3*width/4;
  }
  void show() {
    noStroke();

    pushMatrix();
    translate(x, y, z);
    pushMatrix();
    translate(0, 5*s, 0);
    fill(60);
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
    popMatrix(); // x, y, z
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
