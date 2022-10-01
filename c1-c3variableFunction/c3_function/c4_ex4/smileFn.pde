void smile(float x, float y, int option){
  if(option == 1) fill(255,0,255);
  else fill(255);
  circle(x,y,100);
  circle(x-30,y-30,30);
  circle(x+30,y-30,30);
  fill(255); // return to default
}
