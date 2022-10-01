class Circle extends shape{
  Circle(float xx, float yy){
    super(xx,yy);
    rad1 = rad2 = 50; // default
  }
  Circle(float xx, float yy, float r1, float r2){
    super(xx,yy);
    rad1 = r1;     rad2 = r2;
  }
  float rad1,rad2;
  void display(){
    fill(255,255,0);   ellipse(x,y,rad1,rad2);
  }  
}
