ball4 bb[];
void setup() {
  size(400,500);
  // four objects
  bb = new ball4[8];
  for(int i=0;i<8;i++)
     bb[i] = new ball4(30*i, 50*i, 10*i,i % 4);
  // use member data
  textSize(10);
  text(bb[2].y,200,150);
}
void draw(){
  background(0,255,255);
  // call member function  
  for(int i=0;i<8;i++){
        bb[i].update(); 
        bb[i].display(); 
  }
}
