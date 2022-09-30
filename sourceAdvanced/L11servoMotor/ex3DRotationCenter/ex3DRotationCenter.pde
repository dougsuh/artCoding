float rotX, rotY, transX, transY, scaleFactor;
PShape horn, body;

void setup() {
  size(600,600, P3D);
  smooth();
  
  body = loadShape("body.obj");
  horn = loadShape("tmp.obj");
}

void draw() {
  lights();
  background(32);
  
  translate(width/2 + transX, height/2 + transY, 0);
  
  rotateX(rotX);
  rotateY(-rotY);
  
  scale(4 + scaleFactor);
  
  shape(body);
  
  translate(0, 10, 20);
  rotateZ(radians(frameCount));
  
  shape(horn);
}

void mouseDragged(){
    rotY -= (mouseX - pmouseX) * 0.01;
    rotX -= (mouseY - pmouseY) * 0.01;
}
void keyPressed() {
  if (key == 'a') transX -= 10;
  else if (key == 'd') transX += 10;
  else if (key == 'x') transY += 10;
  else if (key == 'w') transY -= 10;
}
void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  scaleFactor += e * 1.002;
}
