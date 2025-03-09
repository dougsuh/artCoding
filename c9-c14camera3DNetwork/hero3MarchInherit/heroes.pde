class heroes {
  heroes(float x,float y, float z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }
  float x, y, z;
  void update(){
    y += 5;
    z += 5;
    if(y>height+1000){ y = 0; z = -1000;}
  }
  void show() {   }  // virtual function
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
}
