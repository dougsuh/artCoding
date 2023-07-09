int head, tail;
int N, n=0; // number of trials
float x;
void setup() {
  size(500, 200);
  head = tail = 0;
  N = 100; 
  textSize(40);
  fill(0,0,255);
}
void draw() {
  background(0, 255, 255);
  n++;
  if (n<N) {
    x = random(120);
    if (x<60) head++;
    else tail++;
  }
  text("head " + head, 100, 100);
  text("tail " + tail, 300, 100);
}
