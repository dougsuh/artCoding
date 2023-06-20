void setup(){
  size(1000,700); 
  float x,y;
  x = 500;
  y = 300;
  fill(255,0,0);
  stroke(0.0,255);
  beginShape();
  // star right
  vertex(x,y-200);
  vertex(x+50,y-100);
  vertex(x+200,y-100);  
  vertex(x+100,y);
  vertex(x+200,y+100);  
  vertex(x,y+50); 
  vertex(x-200,y+100);
  vertex(x-100,y);  
  vertex(x-200,y-100);  
  vertex(x-50,y-100);
  endShape();
}
