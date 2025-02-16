cannon c1, c2;
ball b1,b2;
void setup() {
  size(1000, 500);
  c1 = new cannon(200, 300, 0);
  c2 = new cannon(800, 300, 1);
  b1 = new ball(c1);
  b2 = new ball(c2);
}
void draw() {
  background(255, 255, 0);
  line(0,300,width,300);
  mountain(300);
  c1.display();
  c2.display();
  if (b1.alive) {
    b1.move();
    b1.display();
    b1.check(c2);
  } else if(b2.alive)  {
    b2.move();
    b2.display();
    b2.check(c1);
  }
}
