void setup(){
  size(300,300);
  int ii, jj;
  ii = 10;
  print(ii + " ii in Line 5\n");
  jj = cc(ii);
  print("ii " + ii + " jj " + jj + " in Line 7\n");
}
int cc(int a){
  print(a + " in Line 10\n");
  a *= 10;
  print(a + " in Line 12\n");
  return a;
}
