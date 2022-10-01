void setup() {
  size(400, 400, P3D);
  background(120);
  fill(255);
  noStroke();
  //lights();
  translate(width/2,height/2);
  camera(500,0,0, 0,0,0, 1,1,1);
  spotLight(255,255,0, 200,0,0, -1,0,0,radians(30),0); // yellow
  spotLight(255,255,255, -400,0,0, 1,0,0,radians(30),0); // white
  spotLight(0,255,255, 0,400,0, 0,-1,0,radians(30),0); // cyan
  spotLight(255,0,255, 0,-400,0, 0,1,0,radians(30),0); // pink
  spotLight(255,0,255, 0,0,-400, 0,0,1,radians(30),0); // pink
  sphere(100);
}
void draw(){
}
