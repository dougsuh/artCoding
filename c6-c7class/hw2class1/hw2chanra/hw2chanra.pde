// make 50 chan's
chan [] at; // 2 objects for At Chanra
void setup(){
  size(1000,800);
  at = new chan[50]; // allocate memory for 50 chan's
  for(int i=0; i<50; i++){
    at[i] = new chan(random(width),random(height));
  }
}
void draw(){
  background(0,50,150);  // sea color
  
  for(int i=0; i<50; i++){
    at[i].ship(); // draw the ship
    at[i].pov();  // move the ship
  }
}
