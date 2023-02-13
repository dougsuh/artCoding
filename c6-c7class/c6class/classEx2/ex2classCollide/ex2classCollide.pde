Siha [] aa;
void setup() {
  size(800, 600);
  aa = new Siha[5];
  for (int i=0; i<5; i++) {
    aa[i] = new Siha();
  }
}
void draw(){
  background(0,255,255);
  for (int i=0; i<5; i++) {
    if(i != 4){
      for(int j=i+1;j<5;j++){
        aa[i].collide(aa[j]);
      }
    }
    aa[i].act();
    aa[i].Life();
  }  
}
