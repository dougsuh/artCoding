// Fall 2024, Jaemin Kim, Heejun Yang, Sohee Lim
santa ss;
void setup(){
  size(600,800,P3D);
  ss = new santa(width/2,-height/2,-1000);
}
void draw(){
  background(135,206,250);
  lights();
  ss.update();   ss.show();
}
