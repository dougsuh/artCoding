void simulation(float [] pdf){
  for(int x=0;x<=n;x++) pdf[x] = 0.0;
  for(int i=0;i<N;i++){  // simulation N times
     for(int k=0;k<n;k++) 
         if(random(1)<p){ pdf[k]++; break;} 
  }
  // normalize
  for(int x=0;x<=n;x++) pdf[x] /= (float)N;
}
