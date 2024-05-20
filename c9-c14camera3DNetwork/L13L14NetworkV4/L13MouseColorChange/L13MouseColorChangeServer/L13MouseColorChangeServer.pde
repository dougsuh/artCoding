import processing.net.*;

Server s;
Client c;
String input;
int data[];
hero shero, chero;
void setup() {
  size(450, 255);
  s = new Server(this, 12345);  // Start a simple server on a port
  shero = new hero();
  chero = new hero();
  chero.x = width - chero.x;
}
void draw() {
  background(120, 150, 0);
  showMenu();
  shero.show();
  chero.show();
  // Receive data from the client
  c = s.available();
  if (c != null) received();
}
void mousePressed() {
  stroke(255);
  shero.update(mouseX,mouseY);
  // Send mouse coordinates to other person
  s.write(pmouseX + " " + pmouseY + " " + mouseX + " " + mouseY + "\n");
}
void received() {
    input = c.readString();
    input = input.substring(0, input.indexOf("\n"));  // Only up to the newline
    data = int(split(input, ' '));  // Split values into an array
    chero.update(data[2], data[3]);
}
void showMenu(){
  fill(255, 0, 0);
  square(0, 0, 50); // red square
  fill(0, 255, 0);
  square(50, 0, 50); // green square
}
