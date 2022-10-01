int i=0,di=1,j=0;
void setup() {
  size(800, 300);
  smooth();
}
void draw() {
  background(255);
  // forest
  fill(0,255,0);
  rect(200,100,100,150);
  fill(255,255,0);
  j++;
  if(j==width) j=0;
  // translate the body center
  translate(j, 100); 
  // head
  strokeWeight(2);
  circle(0,-50,50); // head
  // swing angle 
  i+= di;
  if(i==50) di = -1;
  if(i==-50) di = 1;
  float radSec = (i-50.0);
  // left arm
  pushMatrix();
  rotate(radians(radSec+45));
  ellipse(0, 40, 30, 100);
  popMatrix();
  // left leg
  translate(0, 70);
  pushMatrix();
  rotate(radians(-radSec-45));
  ellipse(0, 40, 30, 100);
  popMatrix();
  // body
  translate(0, -70);
  ellipse(0,25,50,100);  // BODY  
  // right leg
  translate(0, 70);
  pushMatrix();
  rotate(radians(radSec+45));
  ellipse(0, 40, 30, 100);
  popMatrix();  
// right arm
  translate(0, -70);
  pushMatrix();
  rotate(radians(-(radSec+45)));
  ellipse(0, 40, 30, 100);
  popMatrix();  
}
