chan ra, at;
void setup(){
  size(1000,800);
  ra = new chan(500,200);
  at = new chan(700,700,2); // vx = 10
  //ra.vx = 0; ra.vy = 0;
  //at.vx = 0; at.vy = 0;
}
void draw(){
  background(0,50,150);  // sea color
  ra.pov();
  ra.ship();
  at.pov();
  at.ship();  
}
/* / make 50 chan's
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
}*/
