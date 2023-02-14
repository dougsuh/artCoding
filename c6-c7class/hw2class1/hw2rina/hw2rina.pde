// make 50 chan's
kem [] at; // 2 objects for At Chanra
void setup(){
  size(1000,800);
  at = new kem[50]; // allocate memory for 50 chan's
  for(int i=0; i<50; i++){
    at[i] = new kem();
  }
}
void draw(){
  background(100,255,100);  // sea color
  
  for(int i=0; i<50; i++){
    at[i].rina(); // draw the ship
    at[i].aun();  // move the ship
  }
}
