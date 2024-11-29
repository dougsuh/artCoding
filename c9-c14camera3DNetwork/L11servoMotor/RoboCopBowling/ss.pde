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
    translate(x,y,z);
    rotateZ(PI/2);
    if(hit) rotateY(PI/2); // hit
    else rotateX(PI/2); // not hit
    scale(2);
    shape(pin);
    popMatrix();
  }
}
