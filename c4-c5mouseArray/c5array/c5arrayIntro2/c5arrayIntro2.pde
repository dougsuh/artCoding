// Ex.1 average of 2 variables
void setup(){
  float x0,x1,xav,dx0,dx1;
  x0 = 20;
  x1 = 40;
  xav = (x0+x1)/2; // step 1
  dx0 = x0-xav; // step 2
  dx1 = x1-xav;
  println(dx0);
  println(dx1);
}
