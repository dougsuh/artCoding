class walk {
  walk() { 
    ss = 0.5;
    di = 1.0; // angle delta
     i = 0; // angle
  }
  float ss,i,di;
  void display(float x, float y) {    
    translate(x,y); 
    fill(100, 100, 0);
    // arm
    strokeWeight(2);
    circle(0, -50*ss, 50*ss); // head
    // swing angle
    i += di;
    if (i > 50) di = -1;
    if (i < -50) di = 1;
    float radSec = (i-50.0);
    // left arm
    pushMatrix();
    rotate(radians(radSec+45));
    ellipse(0, 40*ss, 30*ss, 100*ss);
    popMatrix();

    translate(0, 70*ss);
    pushMatrix();
    rotate(radians(-radSec-45));
    ellipse(0, 40*ss, 30*ss, 100*ss);
    popMatrix();

    translate(0, -70*ss);
    ellipse(0, 25*ss, 50*ss, 100*ss);  // BODY

    // right leg
    translate(0, 70*ss);
    pushMatrix();
    rotate(radians(radSec+45));
    ellipse(0, 40*ss, 30*ss, 100*ss);
    popMatrix();

    // right arm
    translate(0, -70*ss);
    pushMatrix();
    rotate(radians(-(radSec+45)));
    ellipse(0, 40*ss, 30*ss, 100*ss);
    popMatrix();
    // return to the original location
    translate(-x,-y);
  }
}
