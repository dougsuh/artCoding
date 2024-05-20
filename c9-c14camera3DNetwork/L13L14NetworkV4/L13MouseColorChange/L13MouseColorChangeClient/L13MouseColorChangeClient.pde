import processing.net.*;

Client c;
String input;
int data[];
hero chero, shero;
void setup() {
  size(450, 255);
  // Connect to the server IP address and port
  // Replace with your server IP and port
  c = new Client(this, "127.0.0.1", 12345); 
  shero = new hero();
  chero = new hero();
  chero.x = width - chero.x;
}

void draw() {
  background(120, 150, 0);
  showMenu();
  shero.show();
  chero.show();
  // Receive data from the server
  if (c.available() > 0) received();
}
void mousePressed() {
  stroke(255);
  chero.update(mouseX,mouseY);
  // Send mouse coordinates to other person
  c.write(pmouseX + " " + pmouseY + " " + mouseX + " " + mouseY + "\n");
}
void received() {
    input = c.readString();
    input = input.substring(0, input.indexOf("\n"));  // Only up to the newline
    data = int(split(input, ' '));  // Split values into an array
    shero.update( data[2], data[3]);
}
void showMenu(){
  fill(255, 0, 0);
  square(0, 0, 50); // red square
  fill(0, 255, 0);
  square(50, 0, 50); // green square
}
