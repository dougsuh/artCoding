import processing.net.*; 

Client c; 
String input;
int data[]; 
void setup() { 
  size(450, 255); 
  background(204);
  stroke(0);
  frameRate(5); // Slow it down a little
  c = new Client(this, "127.0.0.1", 12346); 
} 
void draw() {         
  if (mousePressed == true) {
    // Draw our line
    stroke(255);
    line(pmouseX, pmouseY, mouseX, mouseY); 
    // Send mouse coords to other person
    c.write(pmouseX + " " + pmouseY + " " 
           + mouseX + " " + mouseY + " 150\n");
  }
  // Receive data from server
  if (c.available() > 0) { 
    input = c.readString(); 
    println("c1 received "+input);
    input = input.substring(0,input.indexOf("\n"));  
    data = int(split(input, ' '));  
    // Draw line using received coords
    stroke(0);
    line(data[0], data[1], data[2], data[3]); 
  } 
}
