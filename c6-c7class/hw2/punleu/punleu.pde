punleu a, b, c;
void setup(){
  size(1000,700);
  a = new punleu(200, 200);
  b = new punleu(600, 300);
  c = new punleu(800, 400);
}
void draw(){
  background(0,255,255);
  a.punleuShow();
  b.punleuShow();
  c.punleuShow();
  a.update();
  b.update();
  c.update();
}
