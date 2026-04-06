class walking{
  walking(){
    s = 10;
    vx = 5;
    alive = false;
  }
  float x,y,s,vx;
  boolean alive;
  int n; 
  void initialize(float first,int nn){ x = first; alive = true; y = 245; n=nn; }
  void update(float limit){
    x += vx;
    if(x>limit) alive = false;
    fill(0,255,0);
    man(x,y,s,n);
  }
}
