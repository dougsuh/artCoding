float ag, akg, aton;
float bg, bkg, bton;
float cg, ckg, cton;
void setup(){
  ag = 50000;
  akg = g2kg(ag);
  aton = g2ton(ag);
  printall(ag,akg,aton);
  bg = 60000;
  bkg = g2kg(bg);
  bton = g2ton(bg);
  printall(bg,bkg,bton); 
  cg = 70000;
  ckg = g2kg(cg);
  cton = g2ton(cg);
  printall(cg,ckg,cton);
}
float g2kg(float x){
  float y = x/1000;
  return y;
}
float g2ton(float x){
  float y = x/1000/1000.0;
  return y;
}
void printall(float x, float y, float z){
  println(x + "g = " + y + "kg = " + z + "ton");  
}
