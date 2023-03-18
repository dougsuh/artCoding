Ball4 [] bb;
void setup() {
  size(400, 500);
  background(0, 255, 255);
  // 4 objects
  bb= new Ball4[8];
  for (int i=1; i<9; i++)
    bb[i-1] = new Ball4(30*i, 50*i, 10*i, i%4);
  // use member data
  textSize(30);
  text(bb[2].x, 200, 150);
  // call member function
  for (int i=0; i<8; i++)
    bb[i].display();
}
