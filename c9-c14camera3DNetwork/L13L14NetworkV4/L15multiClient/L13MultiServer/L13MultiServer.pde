import processing.net.*;

Server s1,s2; 
Client c;
String input;
int data[];

void setup() { 
  frameRate(5); // Slow it down a little
  s1 = new Server(this, 12345);  
  s2 = new Server(this, 12346);  
} 
void draw() {   
  forward(s1,s2);
  forward(s2,s1);
}
void forward(Server st, Server sr){
  c = st.available();
  if (c != null) {
    input = c.readString(); 
    sr.write(input);
  }
}
