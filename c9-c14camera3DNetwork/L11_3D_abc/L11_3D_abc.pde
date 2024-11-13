void setup(){
  size(800,800,P3D);
  translate(400,0,0);
  fill(255); // default
  stroke(1); // default
  translate(0,200,0);
  box(100,50,150); // box
  translate(0,200,0);
  sphere(100);
  sphere(150);  // small white sphere
  translate(0,200,0);
  noStroke();
  fill(255,0,0);
  sphere(150);  // big red sphere
  translate(-300,-600,0);  // to (0,0,0)  
}
