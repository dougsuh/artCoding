int angle;
void setup() {
  size(800, 800,P3D);
  noStroke();
  frameRate(25);
  angle = 0;
}
void draw() {
  background(0);
  camera(300,300-angle,300-angle,0,0,0,-1,0,0);
  angle++;
  lights();
  atom();
  electron1();
  electron2();
  if(angle > frameRate*20) angle = 0;  
}
void atom(){
  rotateZ(2*PI*angle/(frameRate*20)); // rotation in 20sec
  fill(255,0,0);
  translate(10,0,0);
  sphere(15);
  translate(-20,0,0);
  sphere(15);
  fill(0,0,255);
  translate(10,10,0);
  sphere(15);
  translate(0,-20,0);
  sphere(15);
  rotateZ(-2*PI*angle/(frameRate*20)); // rotation in 20sec
}
void electron1(){  
  pushMatrix();
  float x1=200,z1=0,x2,z2;
  float dth=2*PI/50;
  stroke(255,255,0);
  for(float th=dth;th<2*PI+dth;th+=dth){
    x2 = 200*cos(th); z2 = 200*sin(th);
    line(x1,0,z1,x2,0,z2);
    x1 = x2; z1 = z2;
  }
  noStroke();
  rotateY(2*PI*angle/(frameRate*10));// rotation in 10sec
  translate(200,0,0);
  fill(255,255,0);
  sphere(10);
  popMatrix();
}
void electron2(){  
  pushMatrix();
  float x1=100,y1=0,x2,y2;
  float dth=2*PI/50;
  stroke(255,255,0);
  for(float th=dth;th<2*PI+dth;th+=dth){
    x2 = 100*cos(th); y2 = 100*sin(th);
    line(x1,y1,0,x2,y2,0);
    x1 = x2; y1 = y2;
  }
  noStroke();
  rotateZ(2*PI*angle/(frameRate*20));// rotation in 20sec
  translate(100,0,0);
  fill(255,255,0);
  sphere(5);
  popMatrix();
}
