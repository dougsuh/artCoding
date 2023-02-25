void setup(){
  float x;
  x = C2F(36.5);
  println(" 36.5c = " + x);
  println(" Water boils at " + C2F(100) +"F");
}
float C2F(float c){
  float f;
  f = c*9/5.0+32;
  return f;
}
