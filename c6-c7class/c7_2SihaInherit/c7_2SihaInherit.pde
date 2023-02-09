SihaBoy b;
SihaGirl c;
void setup() {
  size(600, 300);
  c = new SihaGirl(150, 150, 200);
  b = new SihaBoy(450, 150, 200);
  b.drawNecktie();  
  c.drawHair();
}
