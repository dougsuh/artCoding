import processing.net.*;
Client c;

void setup() {
  size(400, 100);
  background(255);
  stroke(0);
  //frameRate(5); // Slow it down a little
  // Connect to the servers IP address and port­
  c = new Client(this, "127.0.0.1", 12346);
  // Replace with your servers IP and port
}

void draw() {
  if (keyPressed) {
    int kk;
    kk = 0;
    if (key == 'b') kk = 0;
    else if (key == 'a') kk = 1;
    else if (key == 'w') kk = 2;
    else if (key == 's') kk = 3;
    else if (key == 'd') kk = 4;
    
    println(0 + " " + kk+ "\n");
    c.write(0 + " " + kk+ "\n");
  }
}

  //void keyPressed(){
