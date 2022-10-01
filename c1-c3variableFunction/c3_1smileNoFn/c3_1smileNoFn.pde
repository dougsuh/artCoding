void setup(){
  size(300,300);
  float x, y;
  x = width/2;
  y = height/2; // center
  circle(x,y,100);  // face
  strokeWeight(3);
  circle(x-30,y-20,30); // left eye
  noFill();
  arc(x+30,y-20,30,30,PI,2*PI); // right eye
  fill(255,0,0);
  noStroke();
  arc(x,y+20,100,60,0,PI); // mouse
  fill(255);    // return to default state
  strokeWeight(1); // return to default state
}
