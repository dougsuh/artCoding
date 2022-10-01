void sun(float x, float y){
  stroke(255, 0, 100);  // color
  strokeWeight(5);
  line(x, y, x, y+100);
  line(x, y, x+50, y);
  line(x, y+100, x+50, y+100);
  line(x+50, y, x+50, y+100);
  line(x, y+50, x+50, y+50);
}
