float a,b,c;
void setup(){
  size(600,300);
  a = 150;   b = 0;   c = 100;
}
void draw(){
  background(0,255,255);
  smile(a,b,c);
  textSize(15);
  text(a,50,50);
  text((int)b,50,70);
  if(a<0 || a>width || b<0 || b>height){
     textSize(40);
     fill(255,0,0);
     text("game over",width/2-150,height/2);    
  }
}
void mouseClicked(){
  a = mouseX;    b = mouseY;
}
void mouseWheel(MouseEvent ee){
  float e = ee.getCount();
  if(e>0) c *= 1.1;
  else if(e<0) c *= 0.9;
}
void keyPressed(){
  if(key == 'a') a -= 5;
  else if(key == 'd') a += 5;
  else if(key == 'w') b -= 5;
  else if(key == 's') b += 5;
}
