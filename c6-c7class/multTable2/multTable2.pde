void setup() {
  for (int i=2; i<10; i++) {
    mtable(i);
  }
}
void mtable(int x) {
  for (int y=1; y<10; y++) {
    println(x + " X " + y + " = " + x*y);
  }
  println(" ");
}
