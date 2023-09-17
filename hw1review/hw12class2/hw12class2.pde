poleak [] aa;
yang [] yy;
void setup() {
  size(800, 600);
  aa = new poleak[3];
  yy = new yang[5];
  for (int i=0; i<3; i++) aa[i] = new poleak();
  for (int i=0; i<5; i++) yy[i] = new yang(random(1, 2));
}
void draw() {
  background(0, 255, 255);
  for (int i=0; i<2; i++) {// sprint 1
      aa[i].po();
      aa[i].ol();
    }
    for (int i=0; i<4; i++) {// sprint 
      yy[i].chan();
      yy[i].display();
    }
  aa[2].ol();     // sprint 2
  yy[4].display();// sprint 2
}
void mousePressed() { // sprint 2
  aa[2].x = mouseX;
  aa[2].y = mouseY;
}
void keyPressed(){   // sprint 2
  if(key == 'a') yy[4].x -= 5;
  else if(key == 'd') yy[4].x += 5;
  else if(key == 's') yy[4].y += 5;
  else if(key == 'w') yy[4].y -= 5;
}
