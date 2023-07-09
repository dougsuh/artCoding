int n0, n1, n2;
int N, n=0; // number of trials
float x, X;
void setup() {
  size(300, 600);
  n0 = n1 = n2 = 0;
  N = 100;
  textSize(40);
  fill(0, 0, 255);
}
void draw() {
  background(0, 255, 255);
  n++;
  if (n<N) {
    x = random(120);
    if (x<40) n0++;
    else if (x<80) n1++;
    else n2++;
  }
  text(" n0 " + n0, 50, 50);
  text(" n1 " + n1, 50, 100);
  text(" n2 " + n2, 50, 150);
}
