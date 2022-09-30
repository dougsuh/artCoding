import processing.net.*;
Server s;
byte bytes[];

void setup() {
  size(400,300);
  s = new Server(this, 12345);
  bytes = new byte[width*height*3];
}

void draw() {
  float t = frameCount * 0.05;
  background(0);
  ellipse(width/2 + 100 * cos(t),
    height/2 + 100 * sin(t), 40, 30);
    
  loadPixels();
  for(int i=0; i<pixels.length; i++) {
    int c = pixels[i];
    bytes[i*3] = (byte)(c >> 16 & 0xFF);
    bytes[i*3+1] = (byte)(c >> 8 & 0xFF);
    bytes[i*3+2] = (byte)(c & 0xFF);
  }
  s.write(bytes);
}
