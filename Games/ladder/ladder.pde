void setup() {
  size(1800,600);
  background(0,255,255);
  int [] aa;
  int N = 20;
  aa = new int[N];
  shuffle(N,aa);
  
  float dx = width/(N+1.0);
  for(int i=0;i<N;i++){
    //print(aa[i] + " " );
    ateam(dx*(i+0.5),i+1,aa[i]);
  }
}
void shuffle(int N, int [] aa) {
  int i, left, j;

  for (i = 0; i < N; i++) aa[i] = -1;
  for (i = 0; i < N; i++) {
    left = ((int)random(N)) % (N - i);
    for (j = 0; j < N; j++) if (aa[j] == -1) {
      if (left == 0) break;
      else left--;
    }
    aa[j] = i;
  }  
  for (i = 0; i < N; i++) aa[i]++;
}
void ateam(float x,int teamNumber, int order){
  square(x,100,50);
  square(x,height-200,50);
  textSize(40);
  fill(0,0,255);
  if(teamNumber == 1) text("order",x+5,65);
  text(teamNumber,x+5,135);
  fill(255,0,0);
  if(teamNumber == 1) text("teamNumber",x+5,height-220);
  text(order,x+5,height-165);
  fill(255);
}
