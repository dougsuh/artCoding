float a, b, c, vx, vy, t, dt;
void setup(){
  size(1000,300);
  // 3.5 seconds per width
  a = 0;
  vx = width/3.5/frameRate;
  c = 100;
  t = 0;
  dt = 1.0/frameRate;
}
void draw(){
  background(0,255,255);
  t += dt;
  a += vx;
  // 0.5 cycles per second = 1Hz 
  b = height / 2 +100*sin(2*PI*0.5*t);
  smile(a,b,c);
  if(a > width) a = 0.0; // return to the starting point 
}
