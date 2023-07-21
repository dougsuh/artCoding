float x1, x2, x3, y1, y2, y3, d1, d2, d3;
void setup() {
  size(900,750);
  x1=300; y1=250; d1=200;
  x2=250; y2=480; d2=100;
  x3=250; y3=230; d3=200;
}
void draw() { //called 60times in second
  background(0, 0, 255); //blue
  house(x1, y1, d1);
  bear(x2, y2, d2);
  tree(x3,y3,d3);
}
void mouseReleased() {
  x1=mouseX-250;//house
  y1=mouseY;
}
void keyPressed(){
  if(key =='a')x2-=9;//bear
  else if(key =='d') x2+=9;
  if(key =='w')y2-=9;
  else if(key =='s') y2+=9;
  
  }
