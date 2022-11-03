float a, b, c, d;
void setup(){
  size(800,300);
  a = 100;
  b = 150;
  c = 600;
  d = 150;
}
void draw(){
  background(0,255,255);
  smile(a, b, 0);
  smile(c, d, 1);
}
void keyPressed(){
  // change a, b
}
void mouseClicked(){
  // change c, d
}
