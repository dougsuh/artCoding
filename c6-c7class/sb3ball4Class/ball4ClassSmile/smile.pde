class smile{
  smile(){};
  void ss(float x,float y, float s){
    fill(255);
    circle(x-s/5,y-s/5,s/5);
    circle(x+s/5,y-s/5,s/5);
    arc(x,y,0.75*s,0.3*s,0,PI);
  }
}
