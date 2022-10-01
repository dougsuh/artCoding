Planet[] planets=new Planet[10];
float rotX, rotZ, transX, transY, scaleFactor;
boolean fps = false;
float cx, cy, cz;
float tx, ty, tz;
int ank=8;
PImage[] img;
PImage[] rings;
PImage backgrounds;
String temps;
PShape sun;
PShape big;
float wheel;
char k=2;
int[] rad = {10, 25, 80, 42, 80, 75, 60, 65};
int initial =120;
char on;
float R, G, B;
int g=0;
void setup()
{
  size(1500, 1000, P3D);
  stroke(0);
  on=1;
  R=G=B=200;
  img = new PImage[9];
  for (int i=0; i<9; i++) {
    temps="p"+i+".jpg";
    img[i]=loadImage(temps);
  }

  backgrounds=loadImage("background.jpg");
  int initial =120;
  for (int i=0; i<8; i++) {

    if (i==5 || i==6) {
      planets[i]= new Planet(rad[i], initial, char(i-4), img[i+1]);
    } else if (i==2) {
      planets[i]= new Planet(rad[i], initial, img[0]);
    } else {
      planets[i]= new Planet(rad[i], initial, img[i+1]);
    }
    initial+=10*(i+1)*4;
  }

  frameRate(60);
  sun=createShape(SPHERE, 100);
  sun.setTexture(img[3]);

  big=createShape(SPHERE, 4500);
  big.setTexture(backgrounds);
}

void draw()
{
  clear();

  shape(big);

  tx = 500*cos(radians(rotZ));
  tz = 0;

  rotateZ(rotX);


  if (on==1) {
    pointLight(R, G, B, planets[2].dist*cos(planets[2].angle)-planets[2].rad, planets[2].dist*sin(planets[2].angle)-planets[2].rad, planets[2].rad);
    pointLight(R, G, B, planets[2].dist*cos(planets[2].angle)+planets[2].rad, planets[2].dist*sin(planets[2].angle)+planets[2].rad, planets[2].rad);
    pointLight(R, G, B, planets[2].dist*cos(planets[2].angle)+planets[2].rad, planets[2].dist*sin(planets[2].angle)-planets[2].rad, planets[2].rad);
    pointLight(R, G, B, planets[2].dist*cos(planets[2].angle)-planets[2].rad, planets[2].dist*sin(planets[2].angle)+planets[2].rad, planets[2].rad);
    pointLight(R, G, B, planets[2].dist*cos(planets[2].angle)+planets[2].rad, planets[2].dist*sin(planets[2].angle)-planets[2].rad, -planets[2].rad);
    pointLight(R, G, B, planets[2].dist*cos(planets[2].angle)+planets[2].rad, planets[2].dist*sin(planets[2].angle)+planets[2].rad, -planets[2].rad);
    pointLight(R, G, B, planets[2].dist*cos(planets[2].angle)-planets[2].rad, planets[2].dist*sin(planets[2].angle)-planets[2].rad, -planets[2].rad);
    pointLight(R, G, B, planets[2].dist*cos(planets[2].angle)-planets[2].rad, planets[2].dist*sin(planets[2].angle)+planets[2].rad, -planets[2].rad);
  } else {
    if (k==2) directionalLight(255, 255, 255, -planets[k].dist*cos(planets[k].angle), -planets[k].dist*sin(planets[k].angle), 0);
    else directionalLight(255, 255, 255, -planets[k].dist*cos(planets[k].angle)+planets[k].rad*2*cos(planets[k].ang2), -planets[k].dist*sin(planets[k].angle)+planets[k].rad*2*sin(planets[k].ang2), 0);
  }

  fill(255, 122, 0);
  noStroke();
  noFill();
  pushMatrix();
  rotateX(-PI/2);
  shape(sun);
  popMatrix();

  for (int i=0; i<ank; i++) {
    planets[i].update();
    planets[i].show();
  }

  camera(0, 1000-wheel, 900-wheel, 0, 0, 0, 0, 1, 0);
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
  else if (key == 'z') {
    fps = false;// 3rd party view
    wheel=0;
  } else if (key == 'f')
  {
    fps = true;
    transX=transY=0;
    rotZ=rotX=0;
  }
  if (key=='0') k=0;
  else if (key=='1') k=1;
  else if (key=='2') k=2;
  else if (key=='3') k=3;
  else if (key=='4') k=4;
  else if (key=='5') k=5;
  else if (key=='6') k=6;
  else if (key=='7') k=7;
  if (key=='o') on*=-1;
}

void mouseWheel(MouseEvent event) {
  float e=event.getCount();
  wheel+=e*20;
}
