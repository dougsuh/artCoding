void setup() {
  size(300, 600, P3D);
  translate(width/2, height/2-100, 0);
  stroke(0);
  noFill();
  piramid(TRIANGLE_STRIP);
  translate(0, 250, 0);
  stroke(255,0,0);
  fill(255,255,0);
  piramid(TRIANGLE_STRIP);
}
void piramid(int option){
  beginShape(option);
  vertex(-100, -100, -100);
  vertex( 100, -100, -100);
  vertex(   0, 0, 100);

  vertex( 100, -100, -100);
  vertex( 100, 100, -100);
  vertex(   0, 0, 100);

  vertex( 100, 100, -100);
  vertex(-100, 100, -100);
  vertex(   0, 0, 100);

  vertex(-100, 100, -100);
  vertex(-100, -100, -100);
  vertex(   0, 0, 100);
  endShape(option);
}
