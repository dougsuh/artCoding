import processing.net.*;

Server s; 
Client c;
String input;
int i=100,j=100;

void setup() { 
  size(450, 255);
  background(204);
  stroke(0);
  frameRate(5); // Slow it down a little
  s = new Server(this, 12345);  // Start a simple server on a port
} 
void draw() { 
  if (keyPressed) {
    s.write(key + "\n");
    text(key,100,i);
    i += 20;
  }
  
  // Receive data from client
  c = s.available();
  if (c != null) {
    input = c.readString(); 
    char cc = input.charAt(0);
    text(cc,200,j);
    j += 20;
  }
}
// send int of casted char
/*void draw() { 
  if (keyPressed) {
    s.write(int(key) + "\n");
    text(key,100,i);
    i += 20;
  }
  
  // Receive data from client
  c = s.available();
  if (c != null) {
    input = c.readString(); 
    input = input.substring(0, input.indexOf("\n"));  // Only up to the newline
    data = int(split(input, ' '));  // Split values into an array
    text(char(data[0]),200,j);
    j += 20;
  }
}*/
