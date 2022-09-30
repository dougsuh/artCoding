void setup(){
  size(400,400);
  background(0,255,255); // cyan
  frameRate(3);
}
void draw(){  
    smile(random(width),
          random(height),
          random(0.3,0.7));
}
