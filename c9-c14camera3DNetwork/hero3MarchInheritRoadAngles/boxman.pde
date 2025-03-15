class boxman extends heroes {
  boxman(float x,float y, float z,float a) {
    super(x,y,z,a);
    s = 3;
  }
  float s;
  void show() {
    noStroke();

    pushMatrix();
    translate(x, y, z);
    if(angle != 0){ rotateY(radians(angle)); // march12
      translate(0,random(-10,10),0);
    }
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
}
