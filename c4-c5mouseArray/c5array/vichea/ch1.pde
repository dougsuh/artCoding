void vichea3(float x, float y, float d) {
  fill(#F20717);
  circle(x+2*d, y-5*d, d*25);
  fill(#FFF7F8); //eye
  ellipse(x-2*d, y-10*d, d*5, d*5);
  ellipse(x+5*d, y-10*d, d*5, d*5);
  fill(255);
  ellipse(x-2*d, y-10*d, d*5, d*5);
  //ellipse(x*5+d,y-10*d,d*5,d*5);
}
