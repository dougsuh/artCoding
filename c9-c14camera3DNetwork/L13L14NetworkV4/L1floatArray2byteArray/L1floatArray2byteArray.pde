// int array to byte array
void setup() {
  int[] x, y;
  x = new int[5];
  y = new int[5];
  for (int i=0; i<5; i++) {
    x[i] = 150+i;
    x[i] |= (150+i+1)<<8;
    x[i] |= (150+i+2)<<16;
  }// i << 24 + (i+1) << 16 + (i+2)<<8 + i+3;
  for (int i=0; i<5; i++) 
  println(String.format("0x%x", x[i]));
  println(" xxxxx");
  byte [] bts;
  bts = new byte[20];
  intA2byteA(5, x, bts);

  for (int i=0; i<20; i++) 
  print(String.format("0x%x ", bts[i]));
  println(" yyyy");
  byteA2intA(5, bts, y);
  for (int i=0; i<5; i++) 
  println(String.format("0x%x", y[i]));
}
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
/*    float [ ] <===> byte [ ]
 void setup() {
 float[] x, y;
 x = new float[5];
 y = new float[5];
 for (int i=0; i<5; i++)
 x[i] = i+0.3;
 byte [] bts;
 bts = new byte[20];
 floatA2byteA(5, x, bts);
 
 byteA2floatA(5, bts, y);
 for (int i=0; i<5; i++)
 println(y[i]);
 }
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
 
 // call by reference: pointer concept for array handle
/*void setup(){
 byte [] bb;
 bb = new byte[5];
 setb(bb,0,2);
 setb(bb,2,3);
 for(int i=0;i<5;i++) println(bb[i]);
 }
 void setb(byte [] b, int at, int n){
 for(int i=0;i<n;i++) b[i+at]=(byte)(i + at);
 }*/
