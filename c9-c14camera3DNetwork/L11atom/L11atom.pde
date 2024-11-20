int angle;
void setup() {
  size(800, 800,P3D);
  camera(300,300,300,0,0,0,-1,0,0);
  noStroke();
}
void draw() {
  background(0);
  angle++;
  lights();
  atom();
  electron1();
  electron2();
  if(angle == frameRate*10) angle = 0;  
}
void atom(){
  rotateZ(2*PI*angle/(frameRate*5)); // rotation in 5sec
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
  rotateZ(-2*PI*angle/(frameRate*5)); // rotation in 5sec
}
void electron1(){  
  pushMatrix();
  rotateY(2*PI*angle/(frameRate));
  translate(200,0,0);
  fill(255,255,0);
  sphere(10);
  popMatrix();
}
void electron2(){  
  pushMatrix();
  rotateZ(2*PI*angle/(frameRate/2));
  translate(100,0,0);
  fill(255,255,0);
  sphere(5);
  popMatrix();
}
