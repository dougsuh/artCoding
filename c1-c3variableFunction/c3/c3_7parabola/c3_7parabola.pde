float x,y,d,dt,N,f,t,T=4.0;
int count=0;
void setup(){
  size(1000,800);
  x=0; y=height/2;
  N = 3;    // periods per width
  frameRate(20);
  dt = 1/frameRate;
  f = N/T;  // periods/sec
  t = 0;
}
void draw(){
  background(0,255,255);
  update();  // update position and size
  smile();   // draw the object
  update2(); // parabolic motion
  smile();   // draw the object
  t += dt;
  if(t>T) t = 0;
}
// cyclon movement
void update(){
  x = width*t/T;
  float cc = cos(2*PI*f*t);
  y = height/2-100 + 200*cc;
  d = 100-30*cc;  // size
}
// parabolic motion
void update2(){
  float vo = 200; // initial velocity
  float g = 100;  // gravity
  x = width*t/T;
  y = height - (vo*t-g*t*t/2.);
  d = 100;  // size
}
void smile(){
  fill(255);
  circle(x,y,d);
  // left eye
  circle(x-d*0.2,y-d*0.2,d*0.2);
  // right eye
  arc(x+d*0.2,y-d*0.2,d*0.2,d*0.2,PI,2*PI);
  // mouth
  fill(255,0,0);
  arc(x,y,d*0.7,d*0.5,0,PI);
}
