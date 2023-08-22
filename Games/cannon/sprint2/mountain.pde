void mountain(float y0){
  fill(0,160,0);
  float x0 = width/2,d=10;
  beginShape();
  vertex(x0-d*5,y0);
  vertex(x0-d*3,y0-d*5);
  vertex(x0-d,y0-d*2);
  vertex(x0,y0-d*7);
  vertex(x0+d*5,y0);
  endShape();
  fill(255);
}
