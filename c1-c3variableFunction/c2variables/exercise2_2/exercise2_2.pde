float x,y;
int a, b;
void setup(){
  println(" float ");
  x = 60;
  y = x+40;
  println(" 1 " + x+" " + y);
  x = x/40;
  y = y+x*3;
  println(" 2 " + x+" " + y);
  y -= 4.5;
  println(" 3 " + x+" " + y);
  
  println(" int ");
  a = 60;
  b = a+40;
  println(" 4 " + a+" " + b);
  a = a/40;
  b = b+a*3;
  println(" 5 " + a+" " + b);
  b -= 4.5;
  println(" 6 " + a+" " + b);  
}
