Siha [] aa;
void setup() {
  size(600, 300);
  aa = new Siha[10];
  for (int i=0; i<10; i++) {
    aa[i] = new Siha(random(width),random(height), 50+10*i);
    aa[i].Life();
  }
}
void draw(){
  background(0,255,255);
  for (int i=0; i<10; i++) {
    aa[i].act();
    aa[i].Life();
  }  
}
