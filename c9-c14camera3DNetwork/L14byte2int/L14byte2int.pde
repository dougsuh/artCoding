int x,y,z;
byte bytes[];
// split an int x into 4 bytes
// assemble the 4 bytes to an int y
// Learned that int MSB -- LBS
void setup(){
  bytes = new byte[4];
  x = 130 + 131*256 + 132 * 65536;
  print("x ",x&255," ",(x>>8)&255," ",(x>>16)&255,"\n");
  for (int i=0; i<4; i++) {
       bytes[i] = (byte)((x >> 8*i)&255);
  }
  print("b ",bytes[0]," ",bytes[1]," ",bytes[2]," ",bytes[3],"\n");
  for (int i=0; i<4; i++) {
        z = (int)bytes[i];
        if(z<0) z = 256+z;
        y |= (z << 8*i);
  }
  print("y ",y&255," ",(y>>8)&255," ",(y>>16)&255,"\n");
}
