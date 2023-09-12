void setWall(){
  for (int i = 0; i < 78; ++i) {
    c[i] = 5;
    if (i<8) {
      a[i+1] = a[i] + 65;
      b[i] = 200;
    } else if (i >=8 && i< 13) {
      a[i] = a[i-1];
      b[i] = b[i-1] + 55;
    } else if (i>=13 && i < 18) {
      a[i] = a[i-1] + 65;
      b[i] = b[i-1];
    } else if (i>=18 && i< 23) {
      a[i] = a[i-1];
      b[i] = b[i-1] - 55;
    } else if (i>=23 && i < 28) {
      a[i] = a[i-1] + 65;
      b[i] = b[i-1];
    } else if (i>=28 && i < 32) {
      a[i] = a[i-1];
      b[i] = b[i-1] - 55;
    } else if (i==32) {
      a[i] = a[i-1] - 1100;
      b[i] = 430;
    } else if (i>=33 && i < 36) {
      a[i] = a[i-1] + 65;
      b[i] = b[i-1];
    } else if (i>=33 && i < 41) {
      a[i] = a[i-1];
      b[i] = b[i-1] + 55;
    } else if (i>=41 && i < 53) {
      a[i] = a[i-1] + 65;
      b[i] = b[i-1];
    } else if (i>=53 && i < 59) {
      a[i] = a[i-1];
      b[i] = b[i-1] - 55;
    } else if (i>=59 && i < 65) {
      a[i] = a[i-1] + 65;
      b[i] = b[i-1];
    } else {
      a[i] = a[i-2];
      b[i] = b[i-2] - 55;
    }
  }
}
void showWall(){  
  for (int i = 0; i < 78; ++i) {    
    bear(a[i], b[i], c[i]);
  }
}
