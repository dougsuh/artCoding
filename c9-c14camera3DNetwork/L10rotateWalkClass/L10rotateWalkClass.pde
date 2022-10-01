walk A,B;
void setup() {
  size(800, 300);
  smooth();
  A = new walk();
  B = new walk(1);
}

void draw() { 
  // reset the original origin and angles
  background(255);
  fill(0,255,0);
  rect(200,100,100,150);
  A.display();  
  B.display();  
}
