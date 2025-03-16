class pp {  // moving player
  pp() {
    x = 0;
    y = -100;
    z = 1000;
    s = 3;
    z0 = z;
  }
  float x, y, z, z0, s;
  // move and locate the character
  void display(int i, en ne) {
    z = z0 - i; // move
    // laser
    if ((i%20)>10) {
      stroke(255, 0, 255);
      strokeWeight(5);
      line(x, y, z, ne.x, ne.y, ne.z);
      strokeWeight(1);
      noStroke(); // 2024. 6. 5
    }
    pushMatrix();
    translate(x, y, z);
    fill(0, 0, 255);// 2024. 6. 5
    sphereDetail(10);
    rotate(PI);  // 2025. 3. 16
    show(); // show the character
    popMatrix();
  }
  // show the character
  void show() {
    noStroke();

    pushMatrix();
    fill(255, 0, 0);
    translate(0, 15*s, 0);
    sphere(10*s);
    popMatrix();

    pushMatrix();
    fill(255, 220, 180);
    translate(0, 3*s, 0);
    sphere(5*s);
    popMatrix();

    pushMatrix();
    fill(0);
    translate(-1.5*s, 3*s, 4.5*s);
    sphere(0.6*s);
    popMatrix();

    pushMatrix();
    fill(0);
    translate(1.5*s, 3*s, 4.5*s);
    sphere(0.6*s);
    popMatrix();

    pushMatrix();
    fill(255);
    translate(0, 0, 0);
    cylinder(6*s, 2*s);
    popMatrix();

    pushMatrix();
    fill(255, 0, 0);
    translate(0, -6*s, 0);
    cone(5*s, 10*s);
    popMatrix();

    pushMatrix();
    fill(255);
    translate(0, -11*s, 0);
    sphere(s);
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
  void cylinder(float r, float h) {
    int sides = 36;
    beginShape(QUADS);
    for (int i = 0; i < sides; i++) {
      float theta1 = TWO_PI * i / sides;
      float theta2 = TWO_PI * (i + 1) / sides;
      float x1 = r * cos(theta1);
      float z1 = r * sin(theta1);
      float x2 = r * cos(theta2);
      float z2 = r * sin(theta2);
      vertex(x1, 0, z1);
      vertex(x2, 0, z2);
      vertex(x2, -h, z2);
      vertex(x1, -h, z1);
    }
    endShape(CLOSE);

    beginShape(TRIANGLE_FAN);
    vertex(0, 0, 0);
    for (int i = 0; i <= sides; i++) {
      float theta = TWO_PI * i / sides;
      float x = r * cos(theta);
      float z = r * sin(theta);
      vertex(x, 0, z);
    }
    endShape(CLOSE);
    beginShape(TRIANGLE_FAN);
    vertex(0, -h, 0);
    for (int i = 0; i <= sides; i++) {
      float theta = TWO_PI * i / sides;
      float x = r * cos(theta);
      float z = r * sin(theta);
      vertex(x, -h, z);
    }
    endShape(CLOSE);
  }
}
