guitar gg;
void setup(){
  size(800,600);
  gg = new guitar(width); // max points
  frameRate(120);
}
void draw(){
  background(0,255,255);
  gg.update();
}
