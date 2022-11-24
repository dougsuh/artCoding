void setup(){
  size(400,250);
  float x,y;
  for(int i=0;i<10;i++){
    x = (i+1)*10;
    y = f(x);
    println(y);
  }
}
float f(float x){
  return 3*x + 5;
}
