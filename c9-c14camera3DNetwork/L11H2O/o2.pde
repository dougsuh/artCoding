class O2 extends molecule {
  O2(float xx, float yy, float zz) {
    super(xx, yy, zz);
  }
  void show() {
    if (active) {
      noStroke();
      translate(x, y, z);
      fill(0, 255, 0);
      box(5, 100, 5);
      translate(0, 50, 0);
      fill(255, 0, 0);
      sphere(30);
      translate(0, -100, 0);
      sphere(30);
      translate(-x, -y+50, -z);
    }
  }
}
