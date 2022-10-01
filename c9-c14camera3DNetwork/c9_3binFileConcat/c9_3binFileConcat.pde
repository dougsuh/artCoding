// write/read a file with 5 bytes, 5 int, 5 float
void setup() {
  // write a binary file
  byte[] nums = { 0, 34, 5, 127, 52};
  int [] ints = { 1, 3, 5, 7, 9};
  float [] floats = {1.5,2.5,3.5,4.5,5.5}; 
  // Writes the bytes to a file
  byte [] xx,yy;
  xx = new byte[20];
  yy = new byte[20];
  floatA2byteA(5, floats, xx);
  intA2byteA(5, ints, yy);
  nums = concat(nums,xx);
  nums = concat(nums,yy);
  saveBytes("numbers.dat", nums);
  // Open a file and read its binary data
  byte b[] = loadBytes("numbers.dat");
  // Print each value, from 0 to 255
  print(" file size " + b.length + "\n");
  // read 5 bytes
  for (int i = 0; i < 5; i++) {
    print(b[i] + " ");
  }
  println();
  // read 5 floats
  for (int i = 0; i < 5; i++) {
    print(byteArray2float(b, 5+4*i) + " ");
  }
  println();
  // read 5 ints
  for (int i = 0; i < 5; i++) {
    print(byteArray2int(b, 25+4*i) + " ");
  }
  println();
}
