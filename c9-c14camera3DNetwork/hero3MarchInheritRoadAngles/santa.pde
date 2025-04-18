class santa extends heroes {
  santa(float x,float y, float z, float a) {
    super(x,y,z,a);
    s = 5;
  }
  float s;
  void show() {
    pushMatrix();
    translate(x,y,z);
    if(angle != 0){ rotateY(radians(angle)); // march12
      translate(0,random(-10,10),0);
    }
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
    popMatrix();
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
