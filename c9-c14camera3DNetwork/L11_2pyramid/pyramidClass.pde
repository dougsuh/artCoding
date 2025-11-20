class pyramid {
  pyramid(float y, int op) {
    this.x = width/2;
    this.y = y;
    this.z = 0;
    this.d = 50;
    option = op;
    angle = 0;
  }
  float x, y, z, d, angle;
  int option;
  void update() {
    if (angle++ > 360) angle = 0;    
    pushMatrix();
    translate(x,y,z);
    if(option == 1) rotateX(radians(angle));
    else if(option == 2) rotateY(radians(angle));
    else if(option == 3) rotateZ(radians(angle));  
    show();
    popMatrix();
  } // end of update 
void show() {
    beginShape(TRIANGLE_STRIP);
    vertex(-d, -d, -d);  // north west
    vertex(d, -d, -d);   // north east
    vertex(0, 0, d);     // top
    vertex(d, d, -d);   // south east
    vertex(-d, d, -d);  // south west
    vertex(0, 0, d);     // top
    vertex(-d, -d, -d);  // north west
    endShape(TRIANGLE_STRIP);
  } // end of show
}  // end of class
