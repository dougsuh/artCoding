void doraemon(float x, float y, float d)
{
  //BG

  // Doraemon's body
  fill(23, 118, 187);
  noStroke();
  ellipse(x, y, 20*d, 20*d);

  // Doraemon's face
  fill(255);
  ellipse(x, y, 16*d, 16*d);
// Doraemon's eyes
  fill(0);
  ellipse(x -2*d, y -2*d, 4*d, 4*d);
  ellipse(x +2*d, y -2*d, 4*d, 4*d);
 
  // Doraemon's nose
  fill(236, 135, 192);
  ellipse(x, y +1.5*d, 2*d, 2*d);

  // Doraemon's bell
  fill(255, 255, 0);
  noStroke();
  ellipse(x, y +9*d, 6*d, 6*d);
  fill(0);
  ellipse(x, y +9*d, 4*d, 4*d);
  fill(255, 255, 0);
  ellipse(x, y +9*d, 2*d, 2*d);

}
