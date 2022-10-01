class Square extends shape{
  Square(float xx, float yy){
    super(xx,yy);      wide = 50; // default
  }
  Square(float xx, float yy, float r1){
    super(xx,yy);      wide = r1;
  }
  float wide;
  void display(){
    fill(255,0,255);    square(x,y,wide);
  }  
}
