void setup () {
  size (600, 800);
  sreyka(200,100,100);
  sreyka(300,400,50);
}
void sreyka(float x, float y, float d){
  //face
  fill (250, 255, 220);
  circle (x, y, d*1.5);
  //eyes
  circle (x-0.35*d,y-0.2*d, d/2);   circle (x+0.3*d,y-0.2*d, d/2);
  //eyess
  fill(0); // fill (0, 0, 0);
  circle (x-0.4*d,y-0.2*d, d/5);   circle (x+0.25*d,y-0.2*d, d/5);
  //ears
  circle (x-0.5*d,y-0.8*d, d*0.4);   circle (x+0.45*d,y-0.83*d, d*0.4);
  //mouth
  ellipse(x,y+0.5*d,d*0.4,d*0.5);
  //tongue
  fill(208, 47, 49);
  ellipse(x, y+0.64*d, d*0.27, d*0.2);
  //Body
  fill(250, 255, 220);
  ellipse (x, y+1.5*d, d*1.75,d*1.5);
  //Hands
  fill(0); // fill(0, 0, 0);
  circle(x-0.7*d,y+0.9*d,d/2);    circle(x+0.7*d,y+0.9*d,d/2);
  //legs
  circle (x-0.5*d,y+2.3*d,d/2);    circle (x+0.4*d,y+2.3*d,d/2);
  fill(255);  // for back to default, white
}
