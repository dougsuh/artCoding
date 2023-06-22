float x1,y1,d1;
float x2,y2,d2;
void setup () {
  size (600, 800);
  x1 =200; y1 = 120; d1 = 100;
  x2 = 300; y2=600; d2=50;
}
void draw(){
  background(255,255,0); // yellow background
  sreyka(x1,y1,d1);
  sreyka(x2,y2,d2);
  x1 = x1 + 2; // move to left
  if(x1>width) x1 = 0;
  d2 = d2*1.01;  // get bigger
  if(d2>200) d2 = 50;
}
void sreyka(float x, float y, float d){
  //face
  fill (250, 255, 220);
  circle (x, y, d*1.5);
  //eyes
  circle (x-0.35*d,y-0.2*d, d/2);   circle (x+0.3*d,y-0.2*d, d/2);
  //eyess
  fill(0); // fill (0, 0, 0);
  float dx, dy; // trembling eyeball 
  dx = random(0.05*d); dy = random(0.05*d); 
  circle (x-0.4*d+dx,y-0.2*d+dy, d/5);   circle (x+0.25*d+dx,y-0.2*d+dy, d/5);
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
