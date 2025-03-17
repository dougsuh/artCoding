void axis(){
  textSize(30);
  // axis
  strokeWeight(5);
  stroke(255,0,0);
  line(0,0,0,100,0,0);  // red x
  stroke(0,255,0);
  line(0,0,0,0,100,0);  // green y
  stroke(0,0,255);
  line(0,0,0,0,0,100);  // blue z
  strokeWeight(2);
  stroke(255,255,255);
  // axis title
  fill(255,0,0);
  text("X",125,0,0);
  fill(0,255,0);
  text("Y",0,125,0);
  fill(0,0,255);
  text("Z",0,0,125);
}
class snowman {
  snowman() {
    s = 30;
    x = y = z = 0;
  }
  float x,y,z,s;
  void show() {    
    pushMatrix();
    translate(x,y,z);
    noStroke();

    pushMatrix();
    translate(0, -s * 0.5, 0);
    fill(255);
    sphere(s * 0.4);
    popMatrix();

    fill(0);
    pushMatrix();
    translate(-s* 0.16, -s * 0.55, s * 0.32);
    sphere(s*0.06);
    popMatrix();

    pushMatrix();
    translate(s* 0.16, -s * 0.55, s * 0.32);
    sphere(s*0.06);
    popMatrix();

    pushMatrix();
    translate(0, s * 0.2, 0);
    fill(255);
    sphere(s * 0.6);
    popMatrix();
    popMatrix();
  }
}
