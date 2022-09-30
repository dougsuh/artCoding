PImage[] img;
int i=0;
String b;
void setup() {
  size(800,250);
  img = new PImage[8];
  for(int i=0;i<8;i++){
    b = "p" + (i+1)+".jpg";
    img[i] = loadImage(b);
    println(b);
  }
  frameRate(5);
}
void draw() {
  background(255);
  image(img[i%8], i*30, 0);
  if(i*30>width) i = 0;
  i++;
}
