void oneNote(byte [] aa, float ff, float t, float at, int fs) {
  short xx;
  float dt = 1./(float)fs;
  int n,n0;
  n0 = (int)(at*fs)+48;
  n = (int)(t*fs);
  for (int i=0; i<n; i++) {
    xx = (short)(10000.0*sin(2*PI*ff*i*dt));
    shortToByteArray(xx,aa, n0+i*2);
  }
}
