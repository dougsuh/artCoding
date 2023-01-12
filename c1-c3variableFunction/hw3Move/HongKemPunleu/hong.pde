void hong(float a, float b) {//among us
  //box
  {
    stroke(255);
    strokeWeight(5);
    fill(0);
  }
  rect(a-150, b-160, 150, 150, 18);
  //leg
  rect(a-65, b, 60, 100, 38);
  rect(a, b, 60, 100, 38);

  //face
  fill(0);
  ellipse(a, b-100, 200, 300);
  fill(173, 216, 230);
  ellipse(a+50, b-150, 120, 60);
  fill(135, 206, 235);
  ellipse(a+70, b-160, 50, 10);
}
