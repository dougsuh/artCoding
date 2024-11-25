void axis(){
  textSize(30);
  // axis
  strokeWeight(2);
  stroke(255,0,0);
  line(0,0,0,300,0,0);  // red x
  stroke(0,255,0);
  line(0,0,0,0,300,0);  // green y
  stroke(0,0,255);
  line(0,0,0,0,0,300);  // blue z
  // axis title
  textSize(30);
  fill(120,0,0);
  text("X",350,0,0);
  fill(0,120,0);
  text("Y",0,350,0);
  fill(0,0,120);
  pushMatrix();
  translate(0,0,350);
  rotateX(radians(-90));
  text("Z",0,0,0);
  popMatrix();
}
