float x,y,s;
void setup(){
  size(300,600);
  x = y = 100;    s = 100;
}
void draw(){
  background(0,255,255);
  smile(x,y,s);
}
void mouseClicked(){
  x = mouseX;    y = mouseY;
}
void mouseWheel(MouseEvent ee){
  float e = ee.getCount();
  if(e>0) s *= 1.1;
  else if(e<0) s *= 0.9;
}
void keyPressed(){
  if(key == 'a') x -= 5;
  else if(key == 'd') x += 5;
  else if(key == 'w') y -= 5;
  else if(key == 's') y += 5;
}
