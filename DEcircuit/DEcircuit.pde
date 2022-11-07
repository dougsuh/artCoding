// DougFo Play: Nov. 7, 2022
// RC circuit with input VI and initial V0
float R,C,tau,VI,V0;
float VCn,VCn1,dt,t=0;
void setup(){
  size(600,600);
  background(0,255,255);
  R = 500.0;
  C = 0.4e-6;
  tau = R*C;
  dt = tau/20; // 20 sample per tau = RC
  VI = 48;
  VCn = V0 = 20;
  frameRate(20);
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
// analytic solution
float vt(float t){
  return (V0-VI)*exp(-t/tau)+VI;
}
// normalize a line segment
void Line(float t,float v, float t1, float v1){
  float tn = 600/10/tau;
  float vn = 600/100.0;
  line(t*tn,600-v*vn,t1*tn,600-v1*vn);
}
