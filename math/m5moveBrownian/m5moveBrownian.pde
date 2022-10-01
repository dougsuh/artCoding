// brownian movement
// Doug Young Suh
// Oct. 28, 2019
brown b1,b2,b3;
void setup() {
  size(500, 500);
  background(0);
  b1 = new brown(width/2,height/2,1);
  b2 = new brown(width/10*6.0,height/10*4.0,2);
  b3 = new brown(width/10*4.5,height/10*6.0,3);  
}
void draw() {
  b1.newmove();
  b2.newmove();
  b3.newmove();
}
