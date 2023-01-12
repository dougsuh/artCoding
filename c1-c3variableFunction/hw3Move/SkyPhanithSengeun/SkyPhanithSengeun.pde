float x1, y1, d1;
float x2, y2, d2;
float x3, y3, d3;
int frames = 0; // q3
int option = 0; // q3
PImage im; // q1
void setup() {
  size (600, 600);
  x1 = 300;
  y1 = 300;
  d1 = 100;
  x2 = 200;
  y2 = 300;
  d2 = 50;
  x3 = 400;
  y3 = 400;
  d3 = 50;
  im = loadImage("blackpink.png");
}
void draw () {
  background (255, 255, 255);
  image(im,0,0);// q1
  home (x1, y1, d1);
  ship (x2, y2, d2);
  snowman (x3, y3, d3);
  x3 = mouseX;
  y3 = mouseY; // q2  
  x1 = x1 + 1;
  y1 = y1 - 1;
  x2 = x2 + 1;
  y2 = y2 + 3;
  if(x1>width) x1 = 0;
  if(x2>width) x2 = 0;
  if(y1<0) y1 = height;
  if(y2>height) y2 = 0;
  
  frames++; // q3
  if (frames > frameRate*2) {//q3
     if(option == 0) option = 1;
     else option = 0;
    frames = 0;
  } // q3 every 2seconds
}
