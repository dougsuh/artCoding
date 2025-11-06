cannon c1, c2;
boolean start = false;
void setup() {
  size(1000, 500);
  c1 = new cannon(200, 300,true);
  c2 = new cannon(800, 300, false);
}
void draw() {
  background(255, 255, 0);
  line(0, 300, width, 300); // ground
  mountain(300);
  c1.display();      c2.display();
  if (start) {
    if (c1.alive && c2.alive) {
      c1.update(c2);   c2.update(c1);
    }
  }
}  // draw
void mouseClicked() {  // for game start
  start = true;
  c1.fire();      c2.fire();
}

void mountain(float y0){
  fill(0,160,0); // green
  float x0 = width/2,d=10;
  beginShape();
  vertex(x0-d*5,y0);
  vertex(x0-d*3,y0-d*5);
  vertex(x0-d,y0-d*2);
  vertex(x0,y0-d*7);
  vertex(x0+d*5,y0);
  endShape();
  fill(255);
}
