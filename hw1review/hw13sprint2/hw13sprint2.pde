potato aa;
crown k2;
teeth k1;
void setup() {
  size(1000, 800);
  aa = new potato();
  k1 = new teeth();
  k2 = new crown();
  aa = new potato();
}
void draw(){
  background(255,255,0);
  k1.drawTooth();
  k2.crowned();
  aa.chip();
}
void mousePressed(){  
  k1.x = mouseX;
  k1.y = mouseY;
}
