void axis(){
  textSize(30);
  translate(-200,-300,0);
  // axis
  strokeWeight(2);
  stroke(255,0,0);
  line(0,0,0,100,0,0);  // red x
  stroke(0,255,0);
  line(0,0,0,0,100,0);  // green y
  stroke(0,0,255);
  line(0,0,0,0,0,100);  // blue z
  strokeWeight(2);
  stroke(255,255,255);
  // axis title
  fill(255,0,0);
  text("X",125,0,0);
  fill(0,255,0);
  text("Y",0,125,0);
  fill(0,0,255);
  text("Z",0,0,125);
  translate(200,300,0);
}
