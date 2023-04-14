// DougFO Play April 15, 2023
float cx,cy,cz,cx1,x;
int i=0;
void setup(){
  size(600,500,P3D);
  frameRate(20);
  cx = 100; cy = cz = 170;
  cx1 = 300;
}
void draw(){
  lights();
  background(0);  
  axis();
  x = cx1 + i/200.0*(cx-cx1);
  camera(x,cy,cz,0,0,0,1,0,0);     
  if(i++ == 200) i = 0;
}
