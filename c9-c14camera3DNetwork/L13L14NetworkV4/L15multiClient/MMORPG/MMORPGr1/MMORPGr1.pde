import processing.net.*;
Client c;
float x = 200;
void setup() {
  size(400, 100);
  background(255);
  stroke(0);
  c = new Client(this, "127.0.0.1", 12345);
}
void draw() {
  background(0);
  if (keyPressed) {
    int kk = 0;
    if (key == 'b') kk = 0;
    else if (key == 'a') kk = 1;
    else if (key == 'w') kk = 2;
    else if (key == 's') kk = 3;
    else if (key == 'd') kk = 4;
    c.write(1 + " " + kk+ "\n");
  }
  if(c.available()>0){// for test S->C
    x += 5;
    c.readString();
  }
  text(x,width/2,height/2);// for test S->C
}
