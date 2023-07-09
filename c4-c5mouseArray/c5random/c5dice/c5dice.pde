int [] eye;
int N, n=0; // number of trials
float x,X;
void setup() {
  size(300, 600);
  eye = new int[6];
  for(int i=0;i<6;i++) eye[i] = 0;
  N = 1000; 
  textSize(40);
  fill(0,0,255);
}
void draw() {
  background(0, 255, 255);
  n++;
  if (n<N) {
    x = random(120);
    for(int i=0;i<6;i++){
      X = 20+20*i;
      if(x<X){ eye[i]++; break; }
    }
  }
  for(int i=0;i<6;i++){
  text("Eye " + (i+1) +"  "+eye[i], 50, 50+i*100);
}
}
