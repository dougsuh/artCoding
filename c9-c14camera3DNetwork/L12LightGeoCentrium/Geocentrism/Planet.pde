class Planet {
  Planet(float r, float d, PImage temp) {
    rad=r;
    dist=d;
    angle=random(-PI, PI);
    ang2=random(-PI, PI);
    orbitspeed=random(0.01, 0.02);
    orspd=orbitspeed;
    op=0;
    noStroke();
    noFill();
    globe=createShape(SPHERE, rad/2);
    globe.setTexture(temp);
    ident=temp;
  }
  Planet(float r, float d, char o, PImage temp) {
    rad=r;
    dist=d;
    angle=random(-PI, PI);
    ang2=random(-PI, PI);
    orbitspeed=random(0.01, 0.02);
    orspd=orbitspeed;
    op=o;
    noStroke();
    noFill();
    globe=createShape(SPHERE, rad/2);
    globe.setTexture(temp);
    ident=temp;
  }
  float rad, dist, angle, orbitspeed;
  float ang2, orspd;
  int mn;
  char op;
  PShape globe;
  PImage ident;
  void update() {
    angle+=orbitspeed;
    ang2+=orspd;
  }

  void show() {

    pushMatrix();
    noFill();
    stroke(255, 255, 255, 10);
    strokeWeight(2);
    circle(0, 0, dist*2);
    //strokeWeight(0);
    rotate(angle);
    translate(dist, 0);
    if (ident!=img[0]) {
      circle(0, 0, rad*2);
      rotate(ang2);
      translate(rad, 0);
    }
    shape(globe);

    if (op==1) {
      pushMatrix();
      rotate(PI/2);
      strokeWeight(5);
      noFill();
      colorMode(HSB, 240, 240, 240);

      for (int i=0; i<20; i++)
      {
        stroke(31, 121-5*i, 170);
        ellipse(0, 0, rad+30+i*1, rad+29+i*2/3);
      }
      colorMode(RGB, 256);
      stroke(0);
      strokeWeight(0);
      popMatrix();
    }

    if (op==2) {
      pushMatrix();
      rotateY(PI/2+0.2);
      strokeWeight(1);
      noFill();
      colorMode(HSB, 240, 240, 240);
      rotateZ(PI/4);
      for (int i=0; i<20; i++)
      {
        stroke(122, 28, 170-5*i);
        circle(0, 0, rad+15+i*2);
      }
      colorMode(RGB, 256);
      stroke(0);
      strokeWeight(0);
      popMatrix();
    }
    popMatrix();
  }//

  //void enlight() {
  //pushMatrix();
  // rotate(angle);
  // translate(dist,0);
  //float newrad=rad;
  //// pointLight(255,255,255,x,y,z);
  //pointLight(255,255,255,newrad+5,0,0);
  //pointLight(255,255,255,-newrad-5,0,0);
  //pointLight(255,255,255,0,newrad+5,0);
  //pointLight(255,255,255,0,-newrad-5,0);
  //pointLight(255,255,255,0,0,newrad+5);
  //pointLight(255,255,255,0,0,-newrad-5);
  //popMatrix();
  //}
} //class finish
