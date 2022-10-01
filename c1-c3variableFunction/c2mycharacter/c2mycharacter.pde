void setup(){
  size(200,200);
  circle(100,100,100);  // face
  circle(80,90,20);  // left eye
  arc(120,90,20,20,PI,2*PI); // right eye
  fill(255,0,0);
  arc(100,120,60,20,0,PI); // mouth
}
/* relative position
void setup(){
  size(200,200);
  float x,y;
  x = 50;
  y = 150;
  circle(x,y,100);  // face
  circle(x-20,y-10,20);  // left eye
  arc(x+20,y-10,20,20,PI,2*PI); // right eye
  fill(255,0,0);
  arc(x,y+20,60,20,0,PI); // mouth
}
*/
