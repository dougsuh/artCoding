import processing.net.*; 
// HW: menu area
Client c; 
String input;
int data[]; 
int count = 0; // HW
void setup() { 
  size(450, 255); 
  background(204);
  stroke(0);
  frameRate(5); // Slow it down a little
  // Connect to the server’s IP address and port­
  c = new Client(this, "127.0.0.1", 12345); // Replace with your server’s IP and port
} 

void draw() {    
  //background(120, 150, 0);
  fill(255, 0, 0);
  square(0, 0, 50);
  fill(0, 255, 0);
  square(50, 0, 50);
  if (count > 0) count -= 2;
  warning();
  if (mousePressed == true) {
    // Draw our line
    stroke(255);
    line(pmouseX, pmouseY, mouseX, mouseY); 
    // Send mouse coords to other person
    c.write(pmouseX + " " + pmouseY + " " + mouseX + " " + mouseY + "\n");
  }

  // Receive data from server
  if (c.available() > 0) { 
    input = c.readString(); 
    input = input.substring(0, input.indexOf("\n"));  // Only up to the newline
    data = int(split(input, ' '));  // Split values into an array
    // Draw line using received coords
    stroke(0);
    line(data[0], data[1], data[2], data[3]); 
    warning( data[2], data[3]);
  }
}

void warning(int x, int y) {
  textSize(30);
  if (y<50) {
    if (x<50) {    
      fill(255, 0, 0);
      text(" Red ", width/2, height/2);
      count = 20;
    } else if (x<100) { 
      fill(0, 255, 0);
      text(" Green ", width/2, height/2); 
      count = 19;
    }
  }
}
void warning() {
  if (count>0) {
    if ((count % 2) == 1) {
      fill(0, 255, 0);
      text(" Blue ", width/2, height/2);
    } else { 
      fill(255, 0, 0);
      text(" Red ", width/2, height/2);
    }
  }
}
