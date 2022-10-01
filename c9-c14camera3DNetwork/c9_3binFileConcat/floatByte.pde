// float array ==> byte array
void floatA2byteA(int n, float[] xx, byte[] bb) {
  for (int i=0; i<n; i++) floatToByteArray(xx[i], bb, i*4);
}
void floatToByteArray(float value, byte[] bb, int at) {
  int intBits =  Float.floatToIntBits(value);
  for (int i=0; i<4; i++) bb[at+i] = (byte) (intBits >> (3-i)*8);
}
// byte array ==> float array
void byteA2floatA(int n, byte[] bb, float[] xx) {
  for (int i=0; i<n; i++) xx[i] = byteArray2float(bb, i*4);
}
public static float byteArray2float(byte[] bb, int at) {
  int intBits = bb[at] << 24
    | (bb[at+1] & 0xFF) << 16
    | (bb[at+2] & 0xFF) << 8
    | (bb[at+3] & 0xFF);
  return Float.intBitsToFloat(intBits);
}
