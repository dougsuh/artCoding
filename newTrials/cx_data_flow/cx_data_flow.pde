// DougFO Play on Dec. 3, 2022  
// change value in a function
void setup(){
  // variable unable to update
  int i=100;
  geti(i);
  println(i);
  // array for data update
  int [] nn;
  nn = new int[2];
  getii(nn);
  println(nn[1]);
  // class for data update
  abc aa;
  aa = new abc();
  aa.a = 100;
  aa.seta();
  println(aa.a);  
}
void geti(int ii){
  ii = 111;
}
void getii(int [] mm){
  mm[0] = mm[1] = 111;
}
class abc{
  int a;
  void seta(){ a = 111;}
}
