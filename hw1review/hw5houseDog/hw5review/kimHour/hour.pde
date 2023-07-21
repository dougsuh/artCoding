void Hour(float x, float y, float d) {
  //body
  fill(149, 120, 106);
  ellipse(x-1*d, y+3.4*d, d*6.4, d*4.4);
  // ears
  ellipse(x-2.75*d, y-1.35*d, d*1.7, d*1.7);
  ellipse(x+0.75*d, y-1.35*d, d*1.7, d*1.7);
  // inner ears
  fill(112, 90, 87);
  ellipse(x-2.75*d, y-1.35*d, d*1.4, d*1.4);
  ellipse(x+0.75*d, y-1.35*d, d*1.4, d*1.4);
  //face
  fill(149, 120, 106);
  ellipse(x-1*d, y+0.3*d, d*4.5, d*4.4);
  //eye
  fill(251, 251, 251);
  ellipse(x-1.7*d, y-0.5*d, d*0.65, d*0.65);
  ellipse(x-0.3*d, y-0.5*d, d*0.65, d*0.65);
  //eye
  fill(15, 15, 11);
  ellipse(x-1.7*d, y-0.5*d, d*0.40, d*0.40);
 
 ellipse (x-0.3*d, y-0.5*d, d*0.40, d*0.40);
  fill(112, 90, 87);
  //snout
  ellipse(x-1*d, y+0.90*d, d*2, d*2);
  //mouth
  fill(0, 0, 0);
  arc(x-1*d, y+1.2*d, d*0.70, d*0.65, 0, PI);
  ellipse(x-1*d, y+0.50*d, d*0.80, d*0.80);
}
