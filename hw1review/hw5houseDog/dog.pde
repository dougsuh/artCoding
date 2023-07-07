void dog(float x, float  y, float d) {
  //face
  fill(150, 75, 0);
  circle(x, y+0.1*d, d*1.5);
  //eye
  fill(255);
  circle(x-0.4*d, y-0.1*d, d*0.40);
  circle(x+0.3*d, y-0.1*d, d*0.40);
  //pupil
  fill(0);
  circle(x-0.4*d, y-0.1*d, d*0.2);
  circle(x+0.3*d, y-0.1*d, d*0.2);
  //ear
  fill(150, 75, 0);
  ellipse(x-1.1*d, y-0.4*d, d*1.2, d*0.5);
  ellipse(x+d, y-0.4*d, d*1.2, d*0.5);
  //nose
  fill(0);
  circle(x-0.1*d, y+0.3*d, d*0.3);
  //nose mole
  fill(255);
  circle(x-0.2*d, y+0.25*d, d/10);
  //mouth
  fill(0);
  arc(x-0.1*d, y+0.5*d, d/2, d*0.6, 0, PI);
  //tongue
  fill(255, 0, 0);
  arc(x-0.1*d, y+0.6*d, d*0.3, 1.2*d, 0, PI);
}
