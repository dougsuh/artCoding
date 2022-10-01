// DougFO Play Jan. 22, 2022
// camera fixed,       affine transform to the target
float rotX, rotY, transX, transY, scaleFactor;
float cx,cy,cz;
int i=0;
//cam cc;
void setup(){
  size(400,300,P3D);
  frameRate(20);
  cx = cy = cz = 170;
}
void draw(){
  lights();
  background(0);
  
  translate(width/2 + transX, height/2 + transY, 0);// OK
  pushMatrix();
  rotateX(rotX);
  rotateY(-rotY);
  //scale(4 + scaleFactor);
  axis();
  popMatrix();  
  float ss = scaleFactor;
  camera(cx*ss,cy*ss,cz*ss,0,0,0,0,1,0);
  if(i++ == 200) i = 0;
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
  scaleFactor += e * 1.0002;
}
