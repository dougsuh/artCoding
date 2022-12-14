float ag, akg, aton;
float bg, bkg, bton;
float cg, ckg, cton;
void setup(){
  ag = 50000;
  akg = ag/1000;
  aton = ag/1000/1000.0;
  println(" a: "+ag + "g = " +akg + "kg = " +aton + "ton");
  bg = 60000;
  bkg = bg/1000;
  bton = bg/1000/1000.0;
  println(" b: "+bg + "g = " +bkg + "kg = " +bton + "ton");  
  cg = 70000;
  ckg = cg/1000;
  cton = cg/1000/1000.0;
  println(" c: "+cg + "g = " +ckg + "kg = " +cton + "ton");
}
