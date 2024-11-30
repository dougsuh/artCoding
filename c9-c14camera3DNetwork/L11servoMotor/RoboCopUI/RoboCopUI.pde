Robo rr;
Shield ss;
PShape pin, ball;
float rotX, rotY, transX, transY, scaleFactor;

void setup() {
  size(800, 800, P3D);
  ss = new Shield(0,-20);
  rr = new Robo(0,0);
  camera(200, -700, 300, 0, 0, 0, 0, 0, -1);
  smooth();

  ball = loadShape("robo/RoboCopToy051023.obj");
  pin  = loadShape("shield/DecorshieldN261222.obj");
}
void draw() {
  lights();
  background(100,100,0);
  translate(transX,transY,0);
  rotateX(rotY);
  rotateZ(-rotX);
  
  scale(4 + scaleFactor);
  rr.show(); 
  ss.show();
}

void mouseDragged(){
    rotX -= (mouseX - pmouseX) * 0.01;
    rotY -= (mouseY - pmouseY) * 0.01;
}
void keyPressed() {
  if (key == 'a') transX -= 10;
  else if (key == 'd') transX += 10;
  else if (key == 's') transY += 10;
  else if (key == 'w') transY -= 10;
}
void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  scaleFactor += e * 1.002;
}
