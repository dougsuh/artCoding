int head, tail;
int N, n=0; // number of trials
float x,r;
void setup() {
  size(500, 250);
  head = tail = 0;
  N = 100; 
  textSize(30);
  fill(0,0,255);
  r = 100./N;
}
void draw() {
  background(0, 255, 255);
  if (n<N) {
    x = random(120);
    if (x<60) head++;
    else tail++;
  }
  n++;
  text("head " + head, 100, 100);
  text("tail " + tail, 300, 100);
  text("head " + head*r + "%", 100, 200);
  text("tail " + tail*r + "%", 300, 200);
}
