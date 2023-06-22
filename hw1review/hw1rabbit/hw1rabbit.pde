void setup(){
  size(400,800);
  // ears
  ellipse(150,350,50,200); // left ear
  ellipse(250,350,50,200); // right ear
  // face
  circle(200,500,200);
  // eyes
  fill(255,0,0); // red
  circle(160,480,40);  // left eye
  circle(240,480,40);  // right eye
  // nose
  noStroke();
  fill(180);   // bright grey
  circle(190,530,30); // left nose
  circle(210,530,30); // right nose
}
