void setup(){
  size(200,200);
  float x,y,d;
  x = 50;
  y = 100;
  d = 40;
  circle(x,y,d);  // face
  circle(x-d*0.2,y-d*0.1,d*0.2);  // left eye
  arc(x+d*0.2,y-d*0.1,d*0.2,d*0.2,PI,2*PI); // right eye
  fill(255,0,0);
  arc(x,y+d*0.2,d*0.6,d*0.2,0,PI); // mouth
}
