class hong{
  hong() {  };
  hong(float s){
  ss = s;
  }
  float ss;
  void fred(float a, float b) {//among us
  b += 100*ss; // compromise
  //box
  {
    stroke(255);
    strokeWeight(5);
    fill(0);
  }
  rect(a-150*ss, b-160*ss, 150*ss, 150*ss, 18*ss);
  //leg
  rect(a-65*ss, b, 60*ss, 100*ss, 38*ss);
  rect(a, b, 60*ss, 100*ss, 38*ss);

  //face
  fill(0);
  ellipse(a, b-100*ss, 200*ss, 300*ss);
  fill(173, 216, 230);
  ellipse(a+50*ss, b-150*ss, 120*ss, 60*ss);
  fill(135, 206, 235);
  ellipse(a+70*ss, b-160*ss, 50*ss, 10*ss);
  }
}
