float e=0,z=0,x=0,px,f=0;
void setup(){
  size(400,300,P3D);
  frameRate(20);
}
void draw(){
  background(0);
  if(e != 0){
    z += e*5;
    e = 0;
  }
  if(f != 0){
    x += f;
    f = 0;
  }
  camera(170,170,100,x,0,z,1,1,0);
  axis();
}
// wheel
void mouseWheel(MouseEvent event){
  e = event.getCount();  
}
// Left Mouse move
void mousePressed(){
  px = mouseX;
}
void mouseReleased(){
  f = px - mouseX;
}
