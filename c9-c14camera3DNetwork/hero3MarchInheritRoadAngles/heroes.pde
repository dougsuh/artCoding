class heroes {
  heroes(float x,float y, float z, float a) {
    this.x = x;     this.y = y;     this.z = z;
    this.angle = a;
  }
  float x, y, z,angle;
  void update(){
    z += 10;
    if(z>2000){z = -2000;}
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
