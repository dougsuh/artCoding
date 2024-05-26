void setup() {
  size(400, 200, P3D);
  camera(200,300,50,0,0,0,0,0,-1);
  noFill();
  piramid(TRIANGLE_STRIP);
  translate(-800,-300,0);
  piramid(TRIANGLE_STRIP);
}
void piramid(int option){
  beginShape(option);
  // back
  vertex(-100, -100, -100); 
  vertex( 100, -100, -100);
  vertex(   0, 0, 100);
  // right
  vertex( 100, -100, -100);
  vertex( 100, 100, -100);
  vertex(   0, 0, 100);
  // front
  vertex( 100, 100, -100);
  vertex(-100, 100, -100);
  vertex(   0, 0, 100);
  // left
  vertex(-100, 100, -100);
  vertex(-100, -100, -100);
  vertex(   0, 0, 100);
  endShape(option);
}
