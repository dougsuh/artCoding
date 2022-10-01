int i;
void setup() {
  size(600, 400, P3D); // 3D space
}
void draw() {
  background(0);
  if (i++ == 600) i=0;
  // enemy
  translate(500, 0, 0);
  rotateX(radians(i));
  stroke(255, 0, 0);
  box(50);  
  rotateX(radians(-i));
  // out-sider
  translate(-100, 0, -100);
  stroke(0, 255, 0);
  box(50); 
  translate(-400, 0, 100);// return to (0 0 0)
  // moving player
  translate(i, 0, 0);
  stroke(0, 0, 255);
  sphere(30);
  translate(-i, 0, 0);
  // laser
  if ((i%20)>10) {
    stroke(255, 0, 255);
    strokeWeight(5);
    line(i, 0, 0, 500, 0, 0);
    strokeWeight(1);
  }
  // FPS
  camera(i,-50,0,500,0,0,-1,0,0);
  // 3rd view
 // camera(0, -100, 0, 250, 0, 0, -1, 0, 0);
}
