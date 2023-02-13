punleu [] aa;
void setup() {
  size(800, 600);
  aa = new punleu[5];
  for (int i=0; i<5; i++) {
    aa[i] = new punleu();
  }
}
void draw(){
  background(0,255,255);  
  for (int i=0; i<5; i++) {
    aa[i].update();
    aa[i].punleuShow();
  }  
}
