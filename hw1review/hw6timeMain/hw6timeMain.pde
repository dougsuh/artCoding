float a, b, c;
float p, q, r;
int fcount = 0;
void setup() {
  size(1000, 800);
  background(255);
  a = 400;
  b = 300;
  c = 50;
  p = 600;
  q = 300;
  r = 30;
  textSize(50);
}
void draw() {  // called 60 times in a second
  if (fcount < 120) {
    background(150, 255, 150);
    coffee(a, b, c,0);
  } else if (fcount < 240) {
    background(100, 250, 255);
    HourBear(p, q, r,0);
  } else {
    background(255, 150, 255);
    coffee(a, b, c,1);
    HourBear(p, q, r,1);
  }
  fcount++;
  if (fcount>360) fcount = 0;
  text(fcount/60 + " sec", 100, 100);
}
