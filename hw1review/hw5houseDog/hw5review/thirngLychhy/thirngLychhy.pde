float x1, x2, y1, y2, d1, d2;
void setup() {
  size(800,800);
  x1=100; y1=300; d1=50;
  x2=100; y2=200; d2=50;
}
void draw() { // called 60 times in 1 second
  background(255,30,10); // yellow
lychhy(x1, y1, d1);
//thirngly(x2, y2, d2);
ly(x2, y2, d2);
}
void mouseReleased() {
  x1 = mouseX;
  y1 = mouseY;
}
void keyPressed() {
   if (key == 'd') x2 +=4;   //turn right
  else if (key == 'a') x2 -=4;   //turn left
  else if(key == 'w') y2 +=4;  // go up
  else if(key == 's') y2 -=4;  // go down
  else {
    x2 = mouseX;
    y2 = mouseY;
  }
}
