class Shield {
  Shield(float x, float y) {
    this.x = x;
    this.y = y;
    z = 0;
    hit = false;
  }
  float x, y, z;
  boolean hit;
  void show() {
    pushMatrix();
    translate(0, 0, 50);
    rotateY(radians(frameCount));
    pushMatrix();
    translate(x, y, z);
    rotateZ(PI/2);
    translate(0, -20, 0);
    scale(0.7);
    shape(pin);
    popMatrix();
    popMatrix();
  }
}
