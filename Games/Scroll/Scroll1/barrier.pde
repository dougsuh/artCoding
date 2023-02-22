class Barrier{
  Barrier(){
    W = 50;
    H = 100;
    x = width;
    vx = -5;
    y = height - 100 - H;
  }
  float W,H,x,vx,y;
  void show(){
    fill(255);
    rect(x+W/2,y,W,H);
  }
  void update(){
    x += vx;
    if(x<0) x = width;
  }
}//end of class
