// make 50 chan's
seng [] at; // 2 objects for At Chanra
void setup(){
  size(1000,800);
  at = new seng[50]; // allocate memory for 50 chan's
  for(int i=0; i<50; i++){
    at[i] = new seng();
  }
}
void draw(){
  background(100,255,100);  // sea color
  
  for(int i=0; i<50; i++){
    at[i].home(); // draw the ship
    at[i].aun();  // move the ship
  }
}
