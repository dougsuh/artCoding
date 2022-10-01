ball4 bb[];
void setup() {
  size(400,500);
  // four objects
  bb = new ball4[8];
  for(int i=0;i<8;i++)
     bb[i] = new ball4(30*i, 50*i, 10*i,i % 4);
  // use member data
  textSize(30);
  text(bb[2].y,200,150);
  // call member function  
  for(int i=0;i<8;i++)
    bb[i].display(); 
}





/*ball4 b1, b2, b3, b4;
void setup() {
  size(400,300);
  // four objects
  b1 = new ball4(50, 50, 10,0);
  b2 = new ball4(150, 50, 20,1);
  b3 = new ball4(70, 200, 60,2);
  b4 = new ball4(250, 200, 30,0);
  // use member data
  textSize(30);
  text(b1.x,200,150);
  // call member function
  b1.display(); 
  b2.display(); 
  b3.display(); 
  b4.display();
}*/
