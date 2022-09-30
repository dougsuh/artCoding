Square nn, nn2;
Circle ww,ww2;
void setup(){
  size(400,400);
  nn = new Square(200,300,40);
  ww = new Circle(300,200,40,30);
  nn2 = new Square(100,100);
  ww2 = new Circle(300,200);
}
void draw(){
  background(0,255,255);
  nn.move();     ww.move();
  nn.display();  ww.display();
  nn2.move();    ww2.move();
  nn2.display(); ww2.display();
}
