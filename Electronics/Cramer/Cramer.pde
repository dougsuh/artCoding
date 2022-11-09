// DougFO Play: Nov. 10, 2022
// Cramer rule for circuit
  float [] A,b;
  float [] v;
void setup(){
  A = new float [4];
  b = new float [2];
  v = new float [2];
  A[0] = 1./50+1./65+1./80;
  A[1] = -1./65;
  A[2] = -1./65;
  A[3] = 1./65+1./75;
  b[0] = 60/80.;
  b[1] = 0.1 + 60./75;
  cramer();
  println(" v1 = "+v[0]+" v2 = "+v[1]);
  float a, b;
  a = A[0]*v[0] + A[1]*v[1];
  b = A[2]*v[0] + A[3]*v[1];
  println(a + "  " + b);
}
void cramer(){
  float dd = det(A[0],A[1],A[2],A[3]);
  if(dd == 0){ println(" no solution!!"); return;}
  else {
    v[0] = det(b[0],A[1],b[1],A[3])/dd;
    v[1] = det(A[0],b[0],A[2],b[1])/dd;
  }
}
float det(float a, float b, float c, float d){
  return a*d - b*c;
}
