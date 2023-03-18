Ball4 [] bb;
void setup() {
  size(400, 500);
  // 4 objects
  bb= new Ball4[3];
  bb[0] = new Ball4(100,200,50,0);
  bb[1] = new Ball4(200,100,60,1);
  bb[2] = new Ball4(300,400,70,2);
}
void draw(){
  background(0, 255, 255);  
  // call member function
  bb[0].ggwang(bb[1]);
  bb[0].ggwang(bb[2]);
  bb[1].ggwang(bb[2]);
  for (int i=0; i<3; i++){
    bb[i].baggue();
    bb[i].display();
  }
}
