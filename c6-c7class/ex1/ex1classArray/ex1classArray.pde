ww [] abc;
void setup() {
  abc = new ww[3];
  for(int i=0;i<3;i++){
    abc[i] = new ww(10000*(i+5));
    abc[i].printall();
  }
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
