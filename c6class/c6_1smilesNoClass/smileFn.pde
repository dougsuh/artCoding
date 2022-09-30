void smile(float x, float y, float d, int op){
  if(op == 0) fill(255); // white
  else if(op == 1) fill(255,255,0); // yellow
  else if(op == 2) fill(255,0,255); // violet
  else fill(0,255,255,0); // cyan
  circle(x,y,d);  // face
  strokeWeight(3);
  circle(x-0.2*d,y-0.1*d,0.2*d); // left eye
  noFill();
  arc(x+0.2*d,y-0.1*d,0.2*d,0.2*d,PI,2*PI); // right eye
  fill(255,0,0);
  noStroke();
  arc(x,y+0.1*d,0.8*d,0.4*d,0,PI); // mouse
  fill(255);    // return to default state
  strokeWeight(1); // return to default state
  stroke(0);
}
