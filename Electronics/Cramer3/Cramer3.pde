// DougFO Play: Nov. 10, 2022
// Cramer rule for circuit
  float [] A,b,dum;
  float [] i;
void setup(){
  A = new float [9];
  dum = new float [9];
  b = new float [3];
  i = new float [3];
  A[0] = 2;
  A[1] = 1;
  A[2] = 0;
  A[3] = -1;
  A[4] = 3;
  A[5] = -1;
  A[6] = 0;
  A[7] = -1;
  A[8] = 2;
  b[0] = 1.;
  b[1] = 0.;
  b[2] = -1.;
  cramer3();
  println(" i1 = "+i[0]+" i2 = "+i[1]+" i3 = "+i[2]);
  float a, b, c;
  a = A[0]*i[0] + A[1]*i[1] + A[2]*i[2];
  b = A[3]*i[0] + A[4]*i[1] + A[5]*i[2];
  c = A[6]*i[0] + A[7]*i[1] + A[8]*i[2];
  println(a + "  " + b+ "  " + c);
}
void cramer3(){
  float dd = det(A);
  if(dd == 0){ println(" no solution!!"); return;}
  else {
    i[0] = det(A,b,0)/dd;
    i[1] = det(A,b,1)/dd;
    i[2] = det(A,b,2)/dd;
  }
}
float det(float [] AA){
  float dd = AA[0] * (AA[4]*AA[8]-AA[5]*AA[7]);
  dd -= AA[1] * (AA[3]*AA[8]-AA[5]*AA[6]);
  dd += AA[2] * (AA[3]*AA[7]-AA[4]*AA[6]);
  return dd;
}
float det(float [] AA, float [] bb, int shift){
  for(int ii=0;ii<9;ii++) dum[ii] = AA[ii];
  for(int ii=0;ii<3;ii++) dum[ii*3+shift] = bb[ii];
  return det(dum);
}
