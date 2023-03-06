// polymorphism
void setup(){
  int hong;
  float gil;
  hong = dong(10,3);
  gil = dong(10.0,3.0);
  println(hong);
  println(gil);
}
int dong(int a, int b){
  return a/b + 200;
}
float dong(float a, float b){
  return a/b + 100.0;
}
