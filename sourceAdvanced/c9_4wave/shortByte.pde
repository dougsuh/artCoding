// short array to byte array
void shortA2byteA(int n, short[] xx, byte[] bb) {
  for (int i=0; i<n; i++) shortToByteArray(xx[i], bb, i*2);
}
void shortToByteArray(short value, byte[] bb, int at) {
  for (int i=0; i<2; i++) bb[at+i] = (byte) (value >> i*8);
}
void byteA2shortA(int n, byte[] bb, short[] xx) {
  for (int i=0; i<n; i++) xx[i] = byteArray2short(bb, i*2);
}
public static short byteArray2short(byte[] bb, int at) {
  short xx = 0, yy;
  for (int i=0; i<4; i++) {
    yy = bb[at+i];
    if (yy < 0) yy += 256;
    xx |= (yy<<8*i);
  }
  return xx;
}
