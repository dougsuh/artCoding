void theory(float [] pdf){
  for(int x=0;x<=n;x++){
    pdf[x] = PP(x);
  }
}
// Cnk = (k+1)..nn p^k(1-p)^(nn-k) / 1..(nn-k)
float PP(int k){
  float x1 = 1.0;
  if(k==0) return pow(1-p,n);
  else if(k==n) return pow(p,n);
  else{
    x1 = pow(p,k);
    for(int j=1;j<=n-k;j++) x1 *= ((1-p)*(k+j)/(float)j);
  }
  return x1;
}
float factorial(float x){
  if(x>0.0) return(x*factorial(x-1));
  else return 1.0;
}
