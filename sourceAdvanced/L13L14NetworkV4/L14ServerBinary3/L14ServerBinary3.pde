import processing.net.*;
Server s;
byte bytes[];
byte filename[];
byte number[] = {'1','2','3','4','5','6','7','8'};
PImage img;
int count=0;
void setup() {
  size(400, 300);
  s = new Server(this, 12345);
  filename = "p3.jpg".getBytes();
  frameRate(5);
}
void draw() {
  background(0);
  filename[1] = number[count % 8];
  count++;  if(count == 65536) count = 0;
  bytes = loadBytes(new String(filename));
  println(bytes.length);
  s.write(bytes);
}
 
