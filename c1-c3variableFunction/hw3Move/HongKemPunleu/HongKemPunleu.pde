float a, b, x, y, e, f, d;
float a1, b1, x1, y1, e1, f1;
float dx = 1, da = 1, de = 1;
void setup() {

  size(700, 700);
  a = 100;
  a1 = 50;
  b = 500;
  b1 = 250;
  x = 250;
  x1 = 175;
  y = 200;
  y1 = 100;
  e = 100;
  e1 = 50;
  f = 200;
  f1 = 100;
  d = 50;
}
void draw()
{
  background(0, 255, 255);
  punleu(x, y);
  punleu(175, 100);
  hong(a, b);
  hong(50, 250);
  kem(e, f, d);
  kem(50, 100, 50);
  e = e + de;
  a = a + da;
  x = x + dx;
  if (x+25>width) {
    dx = -1;
  }
  if (x-25<0) {
    dx = 1;
  }
  if (a+25>width) {
    da = -1;
  }
  if (a-25<0) {
    da = 1;
  }
  if (e+25>width) {
    de = -1;
  }
  if (e-25<0) {
    de = 1;
  }
}
