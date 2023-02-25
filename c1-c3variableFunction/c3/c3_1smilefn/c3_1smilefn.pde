void setup(){
  size(300,300);
  smile(150,100,100);
  smile(100,230,100);
}
void smile(float x, float y, float d){
  circle(x,y,d);  // face
  strokeWeight(3);
  circle(x-0.2*d,y-0.1*d,0.2*d); // left eye
  noFill();
  arc(x+0.2*d,y-0.1*d,0.2*d,0.2*d,PI,2*PI);
  fill(255,0,0);
  noStroke();
  arc(x,y+0.1*d,0.8*d,0.4*d,0,PI); // mouse
  fill(255);    // return to default state
  strokeWeight(1); // return to default state
  stroke(0);
}
