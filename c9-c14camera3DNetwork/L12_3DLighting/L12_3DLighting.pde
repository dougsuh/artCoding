int i=0;
void setup(){
  size(400,300,P3D);
  frameRate(20);
}
void draw(){
  background(0);
  camera(170,170,170,0,0,0,0,1,0);
  // lights();
  // ambientLight(255,255,0);
  //directionalLight(0,255,255,-0.2,-0.5,-1);
  //directionalLight(0,255,255,-1,0,0);
  //pointLight(255,0,255,100,150,200);
  spotLight(255,0,255,100,50,50,-1,0,0,radians(30),2.0);
  axis(1);
  if(i++ == 200) i = 0;
}
