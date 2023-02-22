class Bat{
  Bat(float yy, float ww, float hh){
    y = yy;
    W = ww;
    H = hh;
  }
  float x,y,W,H;
  void show(){
    x = mouseX;
    fill(100,50,0);
    rect(x-W/2,y-H/2,W,H);
  }
}
