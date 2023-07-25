float a1, b1, vx1, vy1;
float a2, b2, vx2, vy2;
float dx,dy,dxx,dyy;
int oo1, oo2;
int frames = 0;  // 0.1 sec / frame
void setup() {
  size(800, 800);
  a1 = random(width); a2 = random(width);
  b1 = random(height); b2 = random(height);
  oo1 = 1; oo2 = 2;
  vx1 = random(3,5); vy1 = random(3,5);
  vx2 = random(3,5); vy2 = random(3,5);  
  dx = width; dy = height;
  frameRate(10);
}
void draw() {
  background(0, 255, 255);
  frames++;
  fill(0,0,120);
  rect(dxx,dyy,dx,dy);
  if((frames % 10) == 0) { dx *= 0.9; dy *= 0.9;
   dxx = (width-dx)/2;
   dyy = (height-dy)/2;
}  
  a1 += vx1; b1 += vy1;  
  a2 += vx2; b2 += vy2;  
  if(a1<dxx || a1>width-dxx){ vx1 = -vx1; a1 = width/2;}
  if(a2<dxx || a2>width-dxx){ vx2 = -vx2;a2 = width/2;}
  if(b1<dyy || b1>height-dyy){ vy1 = -vy1;b1 = height/2;}
  if(b2<dyy || b2>height-dyy){ vy2 = -vy2;b2 = height/2;}
  smile(a1,b1,oo1);
  smile(a2,b2,oo2);
}
