// DougFO Play April 15, 2023
// target fixed: objects on a circle
// player camera looks around.
float rotX, rotZ;
float cx, cy, cz;
float tx, ty, tz;
int i=0;
//PShape lego;
boolean fps = true;
void setup() {
  size(600, 400, P3D);
  frameRate(20);
}
void draw() {
  lights();
  background(120);
  if (fps) {
    tx = 200*cos(radians(rotZ));
    ty = 200*sin(radians(rotZ));
    tz = 0;
    axis();
    camera(0, 0, 0, tx, ty, tz, 0, 0, 1);
  } else {
    axis();
    cx = 400*cos(radians(rotX));
    cy = 400*sin(radians(rotX));
    camera(cx, cy, 250, 0, 0, 0, 0, 0, -1);
  }
}
void mouseDragged() {
  rotZ -= (mouseX - pmouseX) * 0.05;
  rotX -= (mouseY - pmouseY) * 0.05;
}
void keyPressed() {
  if (key == 'z') fps = false;// 3rd party view
  else if (key == 'f') fps = true;  // fps
}
