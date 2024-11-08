import processing.net.*;
MMOServer s1,s2; 
Client cc;
String input;
int data[];
int N;

void setup() { 
  size(1000,800);
  N = 2;
  //frameRate(5); // Slow it down a little
  s1 = new MMOServer(true); // red : true
  s2 = new MMOServer(false);
  s1.ss = new Server(this, 12345);  
  s2.ss = new Server(this, 12346);  
  textSize(50);
} 
void draw() {   
  background(0,255,255);
  s1.update();
  s2.update();
  if(s1.count == N){
    fill(255,0,0);
    text("Red finshed!!",width/4,height/2);
  }
  if(s2.count == N) {
    fill(0,0,255);
    text("Blue finshed!!",width/4,height/2+100);
  }
}
