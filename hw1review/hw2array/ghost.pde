// Sejin Kim
void jin(float x, float y, float d) {
  fill(255);
  arc(x, y, 6*d, 6*d, PI, 2*PI);
  fill(0);
  circle(x-1.5*d, y-0.5*d, d);
  fill(0);
  circle(x+1.5*d, y-0.5*d, d);
  fill(255);
  beginShape();
  vertex(x-3*d, y);
  vertex(x-3*d, y+4*d);
  vertex(x-2*d, y+3*d);
  vertex(x-d, y+4*d);
  vertex(x, y+3*d);
  vertex(x+d, y+4*d);
  vertex(x+2*d, y+3*d);
  vertex(x+3*d, y+4*d);
  vertex(x+3*d, y);
  endShape();
  fill(255, 0, 0);
  beginShape();
  vertex(x-d, y+d);
  vertex(x+d, y+d);
  vertex(x, y+2*d);
  endShape();
}
