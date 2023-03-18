class Ball4 {
  // constructor
  Ball4() {    op = 0;   }
  Ball4(float a, float b, float c, int d) {
    x=a;     y=b;     D = c;     op = d;
  }
  Ball4(float a, float b, float c) {
    op = 0;     x=a;     y=b;     D = c;
  }
  // member data
  float x, y, D;
  int op;
  // member function
  void display() {
    if (op == 0) fill(255, 0, 0);
    else if (op == 1) fill(0, 255, 0);
    else if (op == 2) fill(0, 0, 255);
    else fill(255);
    circle(x, y, D);     circle(x+D, y, D);
    circle(x, y+D, D);   circle(x+D, y+D, D);
  }
}
