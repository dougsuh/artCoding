float vx0, vy0, vx1, vy1, theta, freq;
float D = 200;
void setup() {
  size(600, 800);
  background(120);
  vx0 = width/2;  
  vy0 = height/2;
  theta = 0.0; 
  freq = 10;
}
void draw() {
  if (D>10) {
    move();
    //ellipse(vx1, vy1, 30, 30);
    sun(vx1,vy1);
  }
}
void move() {
  vx1 = vx0 + D * cos(theta*3.141592/180.0);  
  vy1 = vy0 + D * sin(theta*3.141592/180.0);  
  theta += freq;
  D *= 0.99;
}
