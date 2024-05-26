float x=0;
void setup(){
  size(800,800,P3D);
}
void draw(){
  background(255,255,0);
  lights();
  translate(x,0,0);
  if(x>width) x = 0; else x += 5;
  snowman();
}
void snowman(){
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
