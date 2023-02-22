class panha {
  panha (float s) {
    ss = s;
  }
  panha(){
    ss = random(0.5,0.6);
  }
  float ss;
  void panhaShow(float x, float y) {
    y -= 200*ss; // compromise
    fill(191, 64, 191);
    stroke(255, 255, 255);
    strokeWeight(3);
    square(x, y, 200*ss);  //face
    fill(0, 0, 0);
    square(x+30*ss, y+40*ss, 30*ss); //left eye
    square(x+140*ss, y+40*ss, 30*ss); // right eye
    // suh circle(X+450, y+150, 35);  //mouth
    circle(x+85*ss, y+150*ss, 35*ss);  //suh mouth
    fill(191, 64, 191);
    rect(x, y+200*ss, 200*ss, 300*ss); //body
    rect(x-200*ss, y+200*ss, 200*ss, 40*ss); //left hand
    rect(x+200*ss, y+200*ss, 200*ss, 40*ss); //right hand
    rect(x, y+500*ss, 40*ss, 250*ss);//left leg
    rect(x+160*ss, y+500*ss, 40*ss, 250*ss);  //right leg
  } // end of function
}// suh :: end of class
