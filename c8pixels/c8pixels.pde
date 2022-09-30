// Sprint 3: make red and blue stripes with gradation
void setup() {
  size(280,280);
  int halfImage = width*height/2;
  PImage myImage = loadImage("angkor280X140.png");
  image(myImage, 0, 0);
  int A,R,G,B,y,x;
  loadPixels();
  for (int i = 0; i < halfImage; i++) {
    A = 0xff000000;
    R = G = B = 0; 
    y = i/width;
    x = i%width;
    if(y<40 || y > 100){
      R = 0xff* (width - x) / width;
      R <<= 16;
      // R = 0xff0000;
    } else {
      B = 0xff * x / width;
      // B = 0xff;
    }
    pixels[i+halfImage] = A | R | G | B;
  }
  updatePixels();
  noStroke();
  
  // alpha value for transparency (BW,A) or (R,G,B,A)
  fill(120,120);   // 120 = 50% transparent
  circle(width/4,height/2,100);
  fill(255,0,0,120);
  circle(width/2,height/2,100);
}
/* Sprint 2
// reverse the pixel  color of the upper half and put to the lower half
void setup() {
  size(280,280);
  int halfImage = width*height/2;
  PImage myImage = loadImage("angkor280X140.png");
  image(myImage, 0, 0);
  int A,R,G,B;
  loadPixels();
  for (int i = 0; i < halfImage; i++) {
    A = pixels[i] & 0xff000000;
    R = pixels[i] & 0xff0000;
    G = pixels[i] & 0xff00;
    B = pixels[i] & 0xff;
    R = 0xff0000 - R;
    G = 0xff00 - G;
    B = 0xff - B;
    pixels[i+halfImage] = A | R | G | B;
  }
  updatePixels();
}
*/
/* Sprint 1: copy the upper half to the lower half
void setup() {
  size(280,280);
  int halfImage = width*height/2;
  PImage myImage = loadImage("angkor280X140.png");
  image(myImage, 0, 0);

  loadPixels();
  for (int i = 0; i < halfImage; i++) {
    pixels[i+halfImage] = pixels[i];
  }
  updatePixels();
}
*/
