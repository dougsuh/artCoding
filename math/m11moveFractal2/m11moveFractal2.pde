// fractal movement
// https://forum.processing.org/two/discussion/19893/fractal-design
// copied by Doug Young Suh
// Oct. 28, 2019
color RED = color(255, 0, 0);
color BLUE = color(0, 0, 255);
void setup() {
  size(1000, 1000);
  noStroke();
  frameRate(1);
}
void draw() {
  background(0);
  drawCircle(width/2, height/2, 200, pow(1.4,17-frameCount%16), BLUE);
}
// recursive function
void drawCircle(float x, float y, float radius, float maxradius, color c) {
  fill(c);
  ellipse(x, y, radius, radius);
  if (radius > maxradius) {
    pushMatrix();
    translate(x - radius/2, y - radius/2);
    rotate(PI/2); //rotate each branch 90 degrees
    drawCircle(0, 0, radius/1.4, maxradius, c == RED? BLUE : RED); //the color of each branch alternates from red to blue
    popMatrix();
    pushMatrix();
    translate(x - radius/2, y + radius/2);
    rotate(-PI/2);
    drawCircle(0, 0, radius/1.4, maxradius, c == RED? BLUE : RED);
    popMatrix();
  }
}
