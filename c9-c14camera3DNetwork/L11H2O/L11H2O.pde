molecule [] mm;
void setup() {
  size(800, 800, P3D);
  camera(300, 300, 300, 0, 0, 0, -1, 0, 0);
  mm = new molecule[5];
  mm[0] = new H2(200,0,0);
  mm[1] = new H2(0,200,0);
  mm[2] = new O2(0,0,200);
  mm[3] = new H2O(0,0,0);
  mm[4] = new H2O(0,0,0);
  frameRate(30);
}
void draw() {
  background(0);
  lights();
  for (int i=0; i<5; i++) {
    mm[i].move();
    mm[i].show();  
  }
  if(!mm[0].active && !mm[3].active){
    mm[3].active = mm[4].active = true;
    mm[3].vx = mm[4].vy = 1;
  }
}
