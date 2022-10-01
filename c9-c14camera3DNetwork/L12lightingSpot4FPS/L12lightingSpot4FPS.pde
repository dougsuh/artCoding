float x = -500;
void setup() {
  size(800, 400, P3D);
  fill(255);
  noStroke();  
}
void draw(){
  background(180); 
   directionalLight(180,180,180,-0.50,-0.5,-1);
   //translate(width/2,height/2);
   
  camera(0,500,0, 0,0,0, 0,-1,1);
  spotLight(255,255,0, x,200,30, 0,-1,0,radians(30),2); 
  axis();
  balls();
  translate(x,100,50);
  fill(255);
  noStroke();
  sphere(10);
  translate(-x,-100,-50);
  x += 1;
  if(x>500) x = -500;
}
