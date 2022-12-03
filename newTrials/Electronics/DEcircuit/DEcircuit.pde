// DougFo Play: Nov. 7, 2022
// RC circuit with input VI and initial V0
float R,C,tau,VI,V0;
float VCn,VCn1,dt,t=0;
void setup(){
  size(600,400);
  background(0,255,255);
  R = 500.0;
  C = 0.4e-6;
  tau = R*C;
  dt = tau/40; // 20 samples per tau = RC
  VI = 48;
  VCn = V0 = 20;
  frameRate(20);
  stroke(255);
  strokeWeight(4);
  Line(0,VI,10*tau,VI);
  Line(0,3,10*tau,3);
  line(100,height,100,height/6);
  textSize(20);
  fill(0,100,100);
  text("VI=50V",10,height*(1-VI/60));
  text("VO=20V",10,height*(1-V0/60));
  strokeWeight(1);
}
void draw(){
  // numerical solution
  VCn1 = VCn + (VI-VCn)/tau*dt;
  graph();
  t += dt;
  VCn = VCn1;
}
void graph(){
  stroke(255,0,0);  // numerical
  Line(t,VCn,t+dt,VCn1);
  stroke(0,0,255);  // analytic
  Line(t,vt(t),t+dt,vt(t+dt));
}
// analytic solution: 0.5 shift for showing
float vt(float t){
  return (V0-VI)*exp(-t/tau)+VI + 0.5; 
}
// normalize a line segment
void Line(float t,float v, float t1, float v1){
  float tn = (width-100)/5/tau;
  float vn = height/60.0;
  line(100+t*tn,height-v*vn,100+t1*tn,height-v1*vn);
}
