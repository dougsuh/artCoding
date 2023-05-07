class pa{
  pa(float a, float b, float c){
    s = a; u = b; h = c;
  }
  float s,u,h;
  void show(){
  fill(255);
    square(s-h/2,u-h/2,h);
    circle(s,u,h);
  }
}
