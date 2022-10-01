int i=0;
// right-hand law 
// x : left to right
// y : up to down
// z : back to front
void setup() {
  size(400, 400, P3D);
  //noFill();
  // directionalLight(51, 102, 255, -1, 0, 0); not working
  // pointLight(color, position);
  // pointLight(51, 102, 126, 35, 40, 36);
  noStroke();
}
void draw(){
  background(0);
  // directionalLight(color(RGB), direction(x,y,z));
  directionalLight(51, 102, 255, 0, 0, -1.0);
  // pointLight(color, position);
  // pointLight(51, 102, 126, 350, 40, 200);
  translate(120, 90, 0);
  rotateX(radians(-30));
  rotateY(radians(i++ * (-0.5)));
  box(100);
  rotateY(radians(i++ * (0.5)));  // release in the reverse order
  rotateX(radians(30));
  translate(-120, -90, 0);
  
  // box 2
  directionalLight(255, 202, 0, 0, 0, -1.0);
  translate(180, 250, 0);
  //sphereDetail(8);
  //rotateZ(radians(10));
  rotateX(radians(-30));
  rotateY(radians(i++ * 0.5));
  box(120);  
  //sphere(120);  
  translate(-180, -250, 0);
}
