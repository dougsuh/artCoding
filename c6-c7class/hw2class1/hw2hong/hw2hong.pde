hong x,y,z;
void setup(){
  size(1000,1000);
  x = new hong(200,300);
  y = new hong(500,500);
  z = new hong(800,700);
}
void draw(){
  background(0,255,255);
  x.fred();
  y.fred();
  z.fred();
  x.move();
  y.move();
  z.move();
}
