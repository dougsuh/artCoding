class snowman extends heroes {
  snowman(float x,float y, float z) {
    super(x,y,z);
    s = 50;
  }
  float s;
  void show() {    
    pushMatrix();
    translate(x,y,z);
    noStroke();
    float headSize = s * 0.4;
    float eyeSize = headSize * 0.15;
    float bodySize = s * 0.6;

    pushMatrix();
    translate(0, -s * 0.5, 0);
    fill(255);
    sphere(headSize);
    popMatrix();

    fill(0);
    pushMatrix();
    translate(-headSize * 0.4, -s * 0.55, headSize * 0.8);
    sphere(eyeSize);
    popMatrix();

    pushMatrix();
    translate(headSize * 0.4, -s * 0.55, headSize * 0.8);
    sphere(eyeSize);
    popMatrix();

    pushMatrix();
    translate(0, s * 0.2, 0);
    fill(255);
    sphere(bodySize);
    popMatrix();
    popMatrix();
  }
}
