import processing.net.*;
Client c;
byte bytes[];

void setup() {
  size(400,300);
  c = new Client(this, "127.0.0.1", 12345);
}

void draw() {
  if (c.available() > 0) {
    bytes = c.readBytes();
    if (bytes.length == width*height*3) {
      loadPixels();
      for (int i=0; i<pixels.length; i++) {
        pixels[i] = 
          (255 << 24) + 
          ((int)bytes[i*3] << 16) +
          ((int)bytes[i*3+1] << 8) +
          (int)bytes[i*3+2];
      }      
      updatePixels();
    }
  }
}
