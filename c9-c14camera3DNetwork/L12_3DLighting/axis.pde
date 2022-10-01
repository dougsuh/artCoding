void axis(int op){
  textSize(30);
  // axis
  strokeWeight(5);
  stroke(255,0,0);
  line(0,0,0,100,0,0);  // red x
  stroke(0,255,0);
  line(0,0,0,0,100,0);  // green y
  stroke(0,0,255);
  line(0,0,0,0,0,100);  // blue z
  strokeWeight(2);
  stroke(255,255,255);
  // box
  if(op==0) noFill();
  else fill(255);
  translate(20,30,40);
  box(40,60,80);
  translate(-20,-30,-40);
  // axis title
  fill(255,0,0);
  text("X",125,0,0);
  fill(0,255,0);
  text("Y",0,125,0);
  fill(0,0,255);
  text("Z",0,0,125);
}
