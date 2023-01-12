//punleu
void punleu(float x, float y) {
  fill(0, 0, 255);
  ellipse(x, y+30, 200, 210);
  fill(255);
  // eye
  ellipse(x-40, y, 50, 50);
  ellipse(x+30, y, 50, 50);
  // black eye
  fill(0);
  ellipse(x-40, y, 20, 20);
  ellipse(x+30, y, 20, 20);
  fill(0, 255, 0);
  //mouth
  arc(x, y+75, 80, 50, 0, 3.14);
  fill(0, 255, 0);
}
