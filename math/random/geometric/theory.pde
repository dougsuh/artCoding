void theory(float [] pdf){
  for(int x=0;x<=n;x++){
    pdf[x] = pow((1-p),x)*p;
  }
}
