// int array to byte array
void intA2byteA(int n, int[] xx, byte[] bb) {
  for (int i=0; i<n; i++) intToByteArray(xx[i], bb, i*4);
}
void intToByteArray(int value, byte[] bb, int at) {
  //for (int i=0; i<4; i++) bb[at+i] = (byte) (value >> (3-i)*8);
  for (int i=0; i<4; i++) bb[at+i] = (byte) (value >> i*8);
}
void byteA2intA(int n, byte[] bb, int[] xx) {
  for (int i=0; i<n; i++) xx[i] = byteArray2int(bb, i*4);
}
public static int byteArray2int(byte[] bb, int at) {
  int xx = 0,yy;
  for(int i=0;i<4;i++){
    yy = bb[at+i];
    if(yy < 0) yy = 256 + yy;
    xx |= yy << 8*i;
  }
  return xx;
}
