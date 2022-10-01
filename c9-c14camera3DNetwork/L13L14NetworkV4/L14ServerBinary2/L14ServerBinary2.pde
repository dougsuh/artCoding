// send the coordinate (x,y) = 8 bytes
import processing.net.*;
Server s;
byte bytes[];

void setup() {
  size(400, 300);
  s = new Server(this, 12345);
  bytes = new byte[8];
  frameRate(10);
}
void draw() {
  float t = frameCount * 0.05;
  background(0);
  int x = int(width/2 + 100 * cos(t));
  int y = int(height/2 + 100 * sin(t));
  ellipse(x, y, 40, 30);
  for (int i=0; i<4; i++) {
    //bytes[i] = (byte)((x >> (i*8)) & 255);
    //bytes[i+4] = (byte)((y >> (i*8)) & 255);
    bytes[i] = (byte)((x >> (i*8)));
    bytes[i+4] = (byte)((y >> (i*8)));
  } 
  s.write(bytes);
}
