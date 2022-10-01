void setup() {
  size(800, 400, P3D);
  background(180);
  fill(255);
  noStroke();
  directionalLight(120,120,120,-0.50,-0.5,-1);
  camera(80,300,300, 30,0,0, 0,0,-1);
  
  spotLight(180,180,180, -200,0,200, 0,0,-1,radians(20),2); 
  spotLight(255,0,0, 0,0,200, 0,0,-1,radians(10),2); 
  spotLight(0,0,255, 125,-30,200, 0,0,-1,radians(15),2);  
  spotLight(0,255,0, 160,20,200, 0,0,-1,radians(15),2);   
  spotLight(255,0,0, 110,20,200, 0,0,-1,radians(15),2);   
  spotLight(0,255,0, 290,0,200, 0,0,-1,radians(20),2); 
  
  axis();
  fill(255);
  noStroke();
  box(800,200,20); // mat
  bu();
}
