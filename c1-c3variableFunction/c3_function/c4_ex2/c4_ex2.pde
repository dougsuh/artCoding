float a, b;
int c;
void setup(){
  size(800,600);
  a = 150;
  b = 200;
  c = 0;
}
void draw(){
  background(0,255,255);
  if(keyPressed){
    if(key == 'r') c = 1;
    else c = 0;
  }
  smile(a, b, c);
}
