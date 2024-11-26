class H2O extends molecule {
  H2O(float xx, float yy, float zz) {
    super(xx, yy, zz);
  }
  void show() {
    if (active) {
      noStroke();
      translate(x, y, z);
      fill(255, 0, 0);
      pushMatrix();
      rotateZ(radians(angle*1.5));
      sphere(30);
      fill(0, 255, 0);
      translate(0, 25, 0);
      box(5, 50, 5);
      translate(25, -25, 0);
      box(50, 5, 5);
      fill(0, 0, 255);
      translate(25, 0, 0);
      sphere(10);
      translate(-50, 50, 0);
      sphere(10);
      popMatrix();
      textSize(50);
      text("H2O",x,y,z);
      translate(-x, -y-50, -z);
    }
  }
}
