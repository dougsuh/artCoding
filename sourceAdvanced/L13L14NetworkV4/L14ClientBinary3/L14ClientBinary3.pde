import processing.net.*;
Client c;
byte bytes[];
PImage img;
float x=0;
void setup() {
  size(400,300);
  c = new Client(this, "127.0.0.1", 12345);
}
void draw() {
  if (c.available() > 0) {
    bytes = c.readBytes();
    saveBytes("p3.jpg",bytes);
    img = loadImage("p3.jpg");
    background(255);
    image(img,x,100);
    x += 30;
    if(x>width) x = 0;
  }
}
