//Piseth’s flower
void piseth(float x, float y, float d) {
  fill(255, 255, 0);
  circle(x, y, d);
  circle(x-200, y, d);
  circle(x-100, y-100, d);
  circle(x-100, y+100, d);
  stroke(255, 255, 0);
  strokeWeight(5);
  fill(126, 46, 31);
  d = d*200/120.0;
  circle(x-100, y, d); //head
  fill(255, 0, 0);
  ellipse(x-150, y, d/4, d/4);
  ellipse(x-50, y, d/4, d/4);
  arc(x-100, y+50, d*2/5, d*2/5, 0, PI);
  stroke(0, 128, 0);
  strokeWeight(10);
  line(x-100, y+160, x-100, y+400);
}
