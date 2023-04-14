void setup(){
  size(800,800,P3D);
  lights();
  translate(300,200,0);
  box(100,50,150);
  translate(0,200,0);
  sphere(100);
  translate(0,200,0);
  noStroke();
  fill(255,0,0);
  sphere(150);  
}
