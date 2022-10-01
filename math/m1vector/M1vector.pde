float vx0,vy0,vx1,vy1,vx2,vy2,vx3,vy3;
void setup(){
  size(600,800);
  background(255);
  float D = 20;
  // vector : scalar multiplication
  vx1 = 100.0;    vy1 = 50.0;
  vx2 = 2*vx1;   vy2 = 2*vy1;
  vx3 = 2*vx2;   vy3 = 2*vy2;
  fill(150);
  ellipse(vx1,vy1,D,D);
  fill(100);
  ellipse(vx2,vy2,D,D);
  fill(50);
  ellipse(vx3,vy3,D,D);
  line(0.0,0.0,vx3,vy3);
  
  // vector addtion  
  vx0 = 50.0;    vy0 = 250.0;
  vx1 = vx0 + 50.0;    vy1 = vy0 + 200.0;
  vx2 = 200.0;    vy2 = 150.0;
  vx3 = vx1 + vx2;   vy3 = vy1 + vy2; 
  line(vx0,vy0,vx1,vy1);
  line(vx1,vy1,vx3,vy3);
  strokeWeight(5);
  line(vx0,vy0,vx3,vy3);
}
