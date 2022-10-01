PImage[] img;
int i=0;
void setup() {
  size(800,250);
  img = new PImage[8];
  img[0] = loadImage("p1.jpg");
  img[1] = loadImage("p2.jpg");
  img[2] = loadImage("p3.jpg");
  img[3] = loadImage("p4.jpg");
  img[4] = loadImage("p5.jpg");
  img[5] = loadImage("p6.jpg");
  img[6] = loadImage("p7.jpg");
  img[7] = loadImage("p8.jpg");
  frameRate(5);
}

void draw() {
  background(255);
  image(img[i%8], i*30, 0);
  if(i*30>width) i = 0;
  i++;
}
