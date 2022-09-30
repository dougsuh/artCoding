cyclon [] cc;
void setup() {
  size(600, 800);
  background(120);
  cc = new cyclon[4];
  // cyclon(float x,float y,float f, float d){
  cc[0] = new cyclon(100., 100.,8.,70.0);
  cc[1] = new cyclon(100., 300.,4.,30.0);
  cc[2] = new cyclon(400., 100.,-1.,70.0);
  cc[3] = new cyclon(300., 350.,1.,100.0);
}
void draw() {
  for(int i = 0;i<4;i++){
    cc[i].move();
    cc[i].display();
  }
}
