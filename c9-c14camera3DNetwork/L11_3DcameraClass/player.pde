class pp {  // moving player
  pp() {
    x=y=z=0;
  }
  float x, y, z;
  void display(int i,en ne) {
    translate(i, 0, 0);
    fill(0, 0, 255);// 2024. 6. 5
    sphereDetail(10);
    sphere(30);
    translate(-i, 0, 0);
    // laser
    if ((i%20)>10) {
      stroke(255, 0, 255);
      strokeWeight(5);
      line(i, 0, 0, ne.x, 0, 0);
      strokeWeight(1);
      noStroke(); // 2024. 6. 5
    }
  }
}
