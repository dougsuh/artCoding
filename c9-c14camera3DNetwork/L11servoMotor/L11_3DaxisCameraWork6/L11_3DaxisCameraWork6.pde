// DougFO Play June 7, 2024
float angle = 0;
void setup(){
  size(800,600,P3D);
  camera(500,400,300,0,0,0,0,0,-1);
}
void draw(){  
  background(200,255,255);
  lights();
  if(++angle>360) angle = 0;
  axis();
  noStroke();
  fill(255,120,0);
  sphere(50);   // sun
  rotateZ(radians(angle)); // for earth
  translate(300,0,0);
  fill(0,255,0);
  sphere(20);   // earth
  pushMatrix();
  rotateY(radians(30));
  rotateZ(4*radians(angle)); // centered at (300,0,0);
  translate(50,0,0);
  fill(255,255,0);
  sphere(10);   // moon
  popMatrix();
}
