class Robo {
  Robo(float x, float y) {
    this.x = x;
    this.y = y;
    z = 0;
  }
  float x, y, z;
  void show() {
    pushMatrix();
    translate(x,y,z);
    scale(3);
    rotateZ(PI);
    shape(ball);
    popMatrix();
  }
  void move(){
    y += 2;
  }
  void hit(Shield s){
    if(s.y<y) s.hit = true;
  }
}
void axis(){  
    stroke(255, 0, 0);
    line(0, 0, 0, 100, 0, 0);
    stroke(0, 255, 0);
    line(0, 0, 0, 0, 100, 0);
    stroke(0, 0, 255);
    line(0, 0, 0, 0, 0, 100);
}
