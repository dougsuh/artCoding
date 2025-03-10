class santa {
  santa(float x,float y, float z) {
    s = 5;
    this.x = x;
    this.y = y;
    this.z = z;
    bx = new boxman(x,y,z+s*20); // class in class
    onBoard = true; // class in class
  }
  float x, y, z, s;
  boolean onBoard; // class in class
  boxman bx; // class in class
  void update(){
    y += 5;
    z += 5;
    if(y>height+200){ y = -height/2; z = -1000;}
  }
  void show() { 
    pushMatrix();
    translate(x,y,z);
    noStroke();

    if(onBoard){// class in class
      stroke(120,120,0);
      strokeWeight(10);
      line(-4*s,s*11,0,-2*s,s*44,s*40);
      line(4*s,s*11,0,2*s,s*44,s*40);
      noStroke();
      bx.show(0,s*44,s*40,6);
    }// class in class
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
