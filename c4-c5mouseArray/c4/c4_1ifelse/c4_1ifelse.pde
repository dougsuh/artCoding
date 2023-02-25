void setup() {
  size(300, 300);
  int i=3;
  if (i == 1 || i == 2) {
    square(150,100,50);
  } else {
    fill(255,0,0);
    ellipse(150,100,100,50);
  }
}
/*
void setup() {
  size(300, 300);
  float x = 3.5;
  if (x >2 && x < 100) {
    fill(0,255,0);
    square(150,100,50);
  } else {
    fill(255,0,0);
    ellipse(150,100,100,50);
  }
}
*/
