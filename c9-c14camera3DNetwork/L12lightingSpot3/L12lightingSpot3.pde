float x = -500;
void setup() {
  size(800, 400, P3D);
  fill(255);
  noStroke();
  directionalLight(180,180,180,-0.50,-0.5,-1);
  camera(100,300,300, 50,0,0, 0,0,-1);
}
void draw(){
  background(180); 
  axis();
  spotLight(255,0,0, -200,0,200, 0,0,-1,radians(30),0.5); 
  spotLight(0,255,0, 0,0,200, 0,0,-1,radians(30),1); 
  spotLight(255,255,0, 200,0,200, 0,0,-1,radians(30),2); 
  translate(x,0,0);
  fill(255);
  noStroke();
  sphere(50);
  translate(-x,0,0);
  x += 3;
  if(x>500) x = -500;
}
