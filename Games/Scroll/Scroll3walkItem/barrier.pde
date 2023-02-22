class Barrier{
  Barrier(){
    W = 50;
    H = 100;
    x = width;
    vx = -5;
    y = height - 100 - H;
    OP = 3;
    item = new Item();
  }
  float W,H,x,vx,y;
  int OP;  // item select
  Item item;
  void selectOP(){
    float x = random(4);
    if(x<1) OP = 0;
    else if(x<2) OP = 1;
    else if(x<3) OP = 2;
    else OP = 3;
    OP = 3;
  }
  void show(){
    fill(255);
    //rect(x+W/2,y,W,H);
    item.display(OP,x,y);
  }
  void update(){
    x += vx;
    if(x<0) {
      x = width;
      selectOP();
    }
  }
}//end of class
