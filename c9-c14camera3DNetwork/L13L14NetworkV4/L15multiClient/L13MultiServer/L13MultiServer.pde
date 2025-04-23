import processing.net.*;

Server s1,s2; 
Client c1,c2;
String input;
int data[];

void setup() { 
  frameRate(5); // Slow it down a little
  s1 = new Server(this, 12345);  
  s2 = new Server(this, 12346);  
} 
void draw() {   
  forward(c1,s1,s2);
  forward(c2,s2,s1);
}
void forward(Client ct, Server st, Server sr){
  ct = st.available();
  if (ct != null) {
    input = ct.readString(); 
    sr.write(input);
  }
}
