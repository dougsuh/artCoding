//Panha's zombie lol
panha [] aa;
void setup() {
  size(1500, 1200);
  aa = new panha[50];
  for (int i=0; i<50; i++) {
    aa[i] = new panha();
  }
}
void draw() {
  background(0, 250, 0);
  for (int i=0; i<50; i++) {
    aa[i].panhaShow();
    aa[i].update();
  }
}
