// DougFO Play Jan. 22, 2022
// target fixed,  affine transform to the camera
float rotX, rotY, transX, transY, scaleFactor;
float cx,cy,cz;
int i=0;
cam cc;
void setup(){
  size(400,300,P3D);
  frameRate(20);
  cc = new cam();
  translate(width/2, height/2, 0);// OK
  rotX = rotY = transX = transY = 0;
  scaleFactor = 1.0;
}
void draw(){
  lights();
  background(0);
  axis();
  cc.translate(transX,transY,0);
  cc.rotateX(rotX);
  cc.rotateY(rotY);
  cc.scale(scaleFactor);
  camera(cc.x,cc.y,cc.z,0,0,0,0,1,0);
  transX = transY = rotX = rotY = 0;
  scaleFactor = 1.000;
}
void mouseDragged(){
    rotY -= (mouseX - pmouseX) * 0.01;
    rotX -= (mouseY - pmouseY) * 0.01;
}
void keyPressed() {
  if (key == 'a') transX -= 5;
  else if (key == 'd') transX += 5;
  else if (key == 'x') transY += 5;
  else if (key == 'w') transY -= 5;
}
void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  scaleFactor += e / 5.0;
}
