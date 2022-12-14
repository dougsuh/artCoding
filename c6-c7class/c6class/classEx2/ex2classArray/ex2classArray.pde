Siha [] aa;
void setup() {
  size(600, 300);
  aa = new Siha[3];
  for (int i=0; i<3; i++) {
    aa[i] = new Siha(100+150*i, 100+50*i, 100+50*i);
    aa[i].Life();
  }
}
