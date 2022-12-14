ww a, b, c;
void setup() {
  a = new ww(50000);
  b = new ww(60000);
  c = new ww(70000);
  a.printall();
  b.printall();
  c.printall();
}
class ww {
  ww(float gg) {
    g = gg;
  }
  float g, kg, ton;
  void g2kg() {
    kg = g/1000;
  }
  void g2ton() {
    ton = g/1000/1000.0;
  }
  void printall() {
    g2kg();
    g2ton();
    println(g + "g = " + kg + "kg = " + ton + "ton");
  }
}
