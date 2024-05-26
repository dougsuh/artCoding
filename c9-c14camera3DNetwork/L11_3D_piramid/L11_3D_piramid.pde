void setup() {
  size(300, 600, P3D);
  translate(width/2,height/2,0);
  camera(400,600,50,0,0,0,0,0,-1);
  noFill();
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
