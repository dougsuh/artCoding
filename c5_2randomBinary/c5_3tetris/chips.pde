void drawChip(float x,float y,int cc){
  fill(0);
  textSize(20);
  text(hits[cc],x+10,y-80);
  if(cc == 0) { chip(x,y,4, 63); } // 1 1 1 / 1 1 1 
  if(cc == 1) { chip(x,y,6, 56); } // 1 1 1 / 0 0 0
  if(cc == 2) { chip(x,y,2, 57); } // 1 1 1 / 0 0 1
  if(cc == 3) { chip(x,y,3, 62); } // 1 1 1 / 1 1 0 
  if(cc == 4) { chip(x,y,5, 58); } // 1 1 1 / 0 1 0
  if(cc == 5) { chip(x,y,1, 54); } // 1 1 0 / 1 1 0
}
int MonteCarlo(int pp){
  int ii;
  if(pp < cdf[0]) ii = 0;
  else if(pp < cdf[1]) ii = 1;
  else if(pp < cdf[2]) ii = 2;
  else if(pp < cdf[3]) ii = 3;
  else if(pp < cdf[4]) ii = 4;
  else ii = 5;
  return ii;
}
void chip(float x, float y, int rgb, int cc){
  int R=0,G=0,B=0,D=20;
  // set color
  if((rgb & 1) != 0) B = 255;
  if((rgb & 2) != 0) G = 255;
  if((rgb & 4) != 0) R = 255;
  // draw chip
  strokeWeight(4);
  stroke(R/2, G/2, B/2);
  fill(R, G, B);
  if((cc & 1) != 0) square(x,y,D);
  if((cc & 2) != 0) square(x+D,y,D);
  if((cc & 4) != 0) square(x+2*D,y,D);
  if((cc & 8) != 0) square(x,y+D,D);
  if((cc & 16) != 0) square(x+D,y+D,D);
  if((cc & 32) != 0) square(x+2*D,y+D,D);
}
