// DougFO Play Jan. 22, 2022
// target fixed: objects on a circle
// player camera looks around.
float rotX, rotZ, transX, transY, scaleFactor;
float cx, cy, cz;
float tx, ty, tz;
int i=0;
//PShape lego;
boolean fps = true;
void setup() {
  size(600, 400, P3D);
  frameRate(20);
  rotX = rotZ = transX = transY = 0;
  scaleFactor = 1.0;
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
    rotateZ(rotX);
    axis();
    camera(0, 400, 250, 0, 0, 0, 0, 1, 0);
  }
  //transX = transY = rotX = rotY = 0;
  scaleFactor = 1.000;
  i++;
  if (i==360) i = 0; // for automatic constant rotation
}
void mouseDragged() {
  rotZ -= (mouseX - pmouseX) * 0.05;
  rotX -= (mouseY - pmouseY) * 0.05;
}
void keyPressed() {
  if (key == 'a') transX -= 5;
  else if (key == 'd') transX += 5;
  else if (key == 'x') transY += 5;
  else if (key == 'w') transY -= 5;
  else if (key == 'z') fps = false;// 3rd party view
  else if (key == 'f') fps = true;  // fps
}
void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  scaleFactor += e / 5.0;
}
