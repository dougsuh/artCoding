void man(float x, float y, float s, int n) {
  pushMatrix();
  circle(x, y-s, 2*s);
  beginShape();
  vertex(x, y);
  vertex(x-s, y);
  vertex(x-2*s, y+s);
  vertex(x-2*s, y+2*s);
  vertex(x-s, y+1.5*s);
  vertex(x-s, y+4*s);
  vertex(x-0.5*s, y+4*s);
  vertex(x, y+2*s);
  vertex(x+0.5*s, y+4*s);
  vertex(x+s, y+4*s);
  vertex(x+s, y+1.5*s);
  vertex(x+2*s, y+2*s);
  vertex(x+2*s, y+s);
  vertex(x+s, y);
  endShape(CLOSE);
  fill(0,120,255);
  text(n, x-5, y-5);
  popMatrix();
}
