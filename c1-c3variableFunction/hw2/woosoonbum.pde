void atom(float x, float y, float c, float d) { // suh
  translate(x, y);
  float a, b, e;
  a = 0;
  b = 0;
  e = PI/3;
  fill(255, 235, 205);
  circle(0, 0, d*3);
  noFill();
  stroke(255, 165, 0);
  strokeWeight(6);
  ellipse(a, b, c, d);
  rotate(PI/3);
  ellipse(a, b, c, d);
  rotate(PI/3);
  ellipse(a, b, c, d);
  noStroke();
  fill(255, 61, 61);
  circle(a, b, d*0.4);
  fill(127, 255, 212);
  circle(-c/2, b, d/5);
  rotate(PI*2/3);
  circle(-c/2, b, d/5);
  rotate(PI*2/3);
  circle(-c/2, b, d/5);
  translate(-x, -y); // suh get back
  stroke(0); // suh get back
  strokeWeight(1); // suh
}
