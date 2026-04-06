void simulation(float [] pdf){
  for(int x=0;x<=n;x++) pdf[x] = 0.0;
  for(int i=0;i<N;i++){  // simulation N times
     int k = 0; // number of 6's
     for(int j=0;j<n;j++) if(random(1)<p) k++;
     pdf[k]++;
  }
  // normalize
  for(int x=0;x<=n;x++) pdf[x] /= (float)N;
}
