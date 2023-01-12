// Somrech’s Briefcase
  void som(float x, float y, float d){
  fill(255, 0, 0);
  strokeWeight(5);
  rect(x, y, 220*d, 150*d, 20*d);//big rect
  fill(0);
  rect(x+50*d, y+60*d, 35*d, 45*d);//left
  rect(x+130*d, y+60*d, 35*d, 45*d);//right
  fill(153, 51, 0);
  rect(x+60*d, y-28*d, 100*d, 30*d);
  strokeWeight(5);
  line(x, y+80*d, x+220*d, y+60*d);
}
