float [] abcg, abckg, abcton;
void setup(){
  abcg = new float[3];
  abckg = new float[3];
  abcton = new float[3];
  for(int i=0;i<3;i++){
  abcg[i] = 50000 + 10000*i;
  abckg[i] = g2kg(abcg[i]);
  abcton[i] = g2ton(abcg[i]);
  printall(abcg[i],abckg[i],abcton[i]);
  }
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
