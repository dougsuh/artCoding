void setup(){
  float x, y;
  x = 36.5;
  y = C2F(x);
  println(x + " = " + y);
}
float C2F(float c){
  float f;
  f = c*9/5.0+32;
  return f;
}
