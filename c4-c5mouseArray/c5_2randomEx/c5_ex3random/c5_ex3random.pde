int A,B,C;
float x;
String SS;
void setup(){
  size(600,400);
  frameRate(20);
  A = B = C = 0;
  textSize(40);
}
void draw(){  
  background(0,255,255); // cyan
  x = random(100);
  if(x<25) A++;
  else if(x<50) B++;
  else C++;
  SS = A + "   " + B+ "   " + C;
  text(SS,100,200);
  println(SS);
}
