void setup(){
  size(200,200);
  float x,y,d;
  x = 100;
  y = 100;
  d = 10;
  circle(x,y,d*10);  // face
  circle(x-d*2,y-d,d*2);  // left eye
  arc(x+d*2,y-d,d*2,d*2,PI,2*PI); // right eye
  fill(255,0,0);
  arc(x,y+d*2,d*6,d*2,0,PI); // mouth
}
