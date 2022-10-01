// send the coordinate (x,y) = 8 bytes
import processing.net.*;
Client c;
byte bytes[];
int x,y;
void setup() {
  size(400,300);
  c = new Client(this, "127.0.0.1", 12345);
}

void draw() {
  if (c.available() > 0) {
    background(0);
    bytes = c.readBytes();
    if (bytes.length == 8) {
      x = y = 0;
      for (int i=0; i<4; i++) {
        x |= (b2i(bytes[i]) << 8*i); 
        y |= (b2i(bytes[i+4]) << 8*i); 
      }      
    }
    ellipse(x,y,40,30);
  }
}
int b2i(byte z){
  int ii = z;
  if(ii<0) ii = 256+ii;
  return ii;
}
