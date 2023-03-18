float x1,x2,x3,x4;
float y1,y2,y3,y4;
float d1,d2,d3,d4;
int OP1,OP2,OP3,OP4;
void setup(){
  size(400,300);
  background(0,255,255);
  // 4 objects
  x1 = y1 = 50;
  d1 = 10; OP1 = 0;
  x2 = 150; y2 = 100;
  d2 = 20; OP2 = 1;
  x3 = 70; y3 = 200;
  d3 = 60; OP3 = 2;
  x4 = 250; y4 = 200;
  d4 = 30; OP4 = 0;
  display(x1,y1,d1,OP1);
  display(x2,y2,d2,OP2);
  display(x3,y3,d3,OP3);
  display(x4,y4,d4,OP4);  
}
