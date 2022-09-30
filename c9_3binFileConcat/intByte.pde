// int array to byte array
void intA2byteA(int n, int[] xx, byte[] bb) {
  for (int i=0; i<n; i++) intToByteArray(xx[i], bb, i*4);
}
void intToByteArray(int value, byte[] bb, int at) {
  for (int i=0; i<4; i++) bb[at+i] = (byte) (value >> (3-i)*8);
}
void byteA2intA(int n, byte[] bb, int[] xx) {
  for (int i=0; i<n; i++) xx[i] = byteArray2int(bb, i*4);
}
public static int byteArray2int(byte[] bb, int at) {
  return (bb[at] & 0xFF)<< 24
    | (bb[at+1] & 0xFF) << 16
    | (bb[at+2] & 0xFF) << 8
    | (bb[at+3] & 0xFF);
}
