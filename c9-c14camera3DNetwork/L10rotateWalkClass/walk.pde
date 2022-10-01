class walk {
  walk() { 
    i=j=0; 
    di=1; 
    OP=0;
  };
  walk(int ii) { 
    if (ii==1) { 
      di=-1; 
      i=j=0; 
      OP=1;
    }
  }
  int j, i, di, OP;
  void display() {
    j++;
    // translate the center
    if (OP == 1) { 
      translate(width-j, 100); 
      fill(0, 255, 255);
    } else { 
      translate(j, 100); 
      fill(255, 255, 0);
    }
    if (j==width) j=0;
    // arm
    strokeWeight(2);
    circle(0, -50, 50); // head
    // swing angle
    i+= di;
    if (i==50) di = -1;
    if (i==-50) di = 1;
    float radSec = (i-50.0);
    // left arm
    pushMatrix();
    rotate(radians(radSec+45));
    ellipse(0, 40, 30, 100);
    popMatrix();

    translate(0, 70);
    pushMatrix();
    rotate(radians(-radSec-45));
    ellipse(0, 40, 30, 100);
    popMatrix();

    translate(0, -70);
    ellipse(0, 25, 50, 100);  // BODY

    // right leg
    translate(0, 70);
    pushMatrix();
    rotate(radians(radSec+45));
    ellipse(0, 40, 30, 100);
    popMatrix();

    // right arm
    translate(0, -70);
    pushMatrix();
    rotate(radians(-(radSec+45)));
    ellipse(0, 40, 30, 100);
    popMatrix();
    // return to the original location
    if (OP==0) translate(-j, -100);
    else translate(j-width, -100);
  }
}
