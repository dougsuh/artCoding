void setup() {
  int N = 10000;   
  // dice
  float x,sum=0;
  float [] xx = new float[6];
  for (int i=0; i<6; i++) {  
    xx[i] = 0.0;
  }
  for (int i=0; i<N; i++) {
    x = random(6);         // [0,6]
    if      (x<1) sum += 1; // [0,1)
    else if (x<2) sum += 2; // [1,2)
    else if (x<3) sum += 3; // [2,3)
    else if (x<4) sum += 4; // [3,4)
    else if (x<5) sum += 5; // [4,5)
    else          sum += 6; // [5,6]
  }
  println("  average  " + sum/N);
}
