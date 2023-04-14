float angle = 0;
void setup() {
  size(640, 400, P3D);
  frameRate(10);
}
void draw(){    
  background(0);
  translate(width/2, height/2-50, 0);
  lights();
  stroke(255);
  translate(58, 48, 0);
  angle++;
  rotateX(2*PI*angle/6/frameRate);
  
  fill(255,0,0);
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
