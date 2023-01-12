//Panha's zombie lol
float x1,y1,x2,y2;
void setup(){
  size(900, 900);
  x1 = 350; y1 = 100;
  x2 = 650; y2 = 450;
}
void draw(){
  background(0, 250, 0);
  x2 = x2 + 2; 
  y1 = y1 + 3;
  if(x2>width) x2 = 0;
  if(y1>height) y1 = 1;
  panha(x2,y2,0.5);
  panha(x1,y1,1);
}
