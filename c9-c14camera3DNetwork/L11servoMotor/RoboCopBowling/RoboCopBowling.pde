Robo rr;
Shield [] ss;
PShape pin, ball;
boolean fps;

void setup() {
  size(800, 800, P3D);
  ss = new Shield[10];
  int k = 0;
  for (int i=0; i<4; i++) {
    ss[k++] = new Shield(i*100-150, 300);
  }
  for (int i=0; i<3; i++) {
    ss[k++] = new Shield(i*100-100, 200);
  }
  for (int i=0; i<2; i++) {
    ss[k++] = new Shield(i*100-50, 100);
  }
  ss[k] = new Shield(0, 0);
  rr = new Robo(0, -500);
  fps = true;
  camera(200, -700, 300, 0, -200, 0, 0, 0, -1);
  smooth();

  ball = loadShape("robo/RoboCopToy051023.obj");
  pin  = loadShape("shield/DecorshieldN261222.obj");
}
void draw() {
  lights();
  background(100, 80, 0);
  if (fps) camera(rr.x, rr.y-100, rr.z+150, 0, 200, 0, 0, 0, -1);
  else camera(200, -700, 300, 0, -200, 0, 0, 0, -1);
  axis();
  pushMatrix();
  translate(0, -100, -10);
  noStroke();
  fill(150, 150, 0);
  box(350, 1000, 1);
  popMatrix();
  for (int i=0; i<10; i++) {
    ss[i].show();
    rr.hit(ss[i]);
  }
  rr.show();
  rr.move();
}
void keyPressed() {
  if (key=='f') fps = true;
  else fps = false;
}
