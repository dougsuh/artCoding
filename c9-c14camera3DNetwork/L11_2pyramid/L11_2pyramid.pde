pyramid [] pp;
void setup() { 
  size(400, 600, P3D);
  pp = new pyramid[3];
  for(int i=0;i<3;i++){
    pp[i] = new pyramid(100+200*i,i+1);
  }
  fill(255,0,0);
}
void draw(){
  background(0);  lights();
  for(pyramid p: pp){
    p.update(); // It calls show( ) inside.
  }
}
