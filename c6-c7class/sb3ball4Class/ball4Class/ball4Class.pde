Ball4 b1,b2,b3,b4;
void setup(){
  size(400,300);
  background(0,255,255);
  // 4 objects
  b1 = new Ball4(50,50,10,0);
  b2 = new Ball4(150,100,20,1);
  b3 = new Ball4(70,200,60,2);
  b4 = new Ball4(250,200,30,0);
  // use member data
  textSize(30);
  text(b1.x,200,150);
  // call member function
  b1.display();
  b2.display();
  b3.display();
  b4.display();
}
