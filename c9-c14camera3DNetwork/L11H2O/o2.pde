class O2 extends molecule {
  O2(float xx, float yy, float zz) {
    super(xx, yy, zz);
  }
  void show() {
    if (active) {
      noStroke();
      translate(x, y, z);
      pushMatrix();
      rotateX(radians(angle*2));
      fill(0, 255, 0);
      box(5, 100, 5);
      translate(0, 50, 0);
      fill(255, 0, 0);
      sphere(30);
      translate(0, -100, 0);
      sphere(30);
      popMatrix();
      textSize(50);
      text("O2",x,y+200,z);
      translate(-x, -y+50, -z);
    }
  }
}
