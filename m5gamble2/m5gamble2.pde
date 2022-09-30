void setup() {
  size(300, 600);  
  int N = 10000;
  
  println(" dice ");    
  // dice
  float x;
  float [] xx = new float[6];
  for (int i=0; i<6; i++) {  
    xx[i] = 0.0;
  }
  for (int i=0; i<N; i++) {
    x = random(6);         // [0,6]
    if     (x<1) xx[0]++;  // [0,1)
    else if (x<2) xx[1]++; // [1,2)
    else if (x<3) xx[2]++; // [2,3)
    else if (x<4) xx[3]++; // [3,4)
    else if (x<5) xx[4]++; // [4,5)
    else          xx[5]++; // [5,6]
  }
  for (int i=0; i<6; i++) {   
    print(i+1); 
    print("   "); 
    print(xx[i]/(float)N); 
    print("\n");
  }
           
  println(" tetris ");                                                                                                                                                                       
  // tetris
  int shape = 0;
  float pa=12.3, pb=26.5, pc=17.23, pd=22.3, pe=9.2, pf=12.47;
  float Pa, Pb, Pc, Pd, Pe, Pf;
  Pa = pa; 
  Pb = Pa + pb; 
  Pc = Pb + pc;
  Pd = Pc + pd; 
  Pe = Pd + pe; 
  Pf = Pe + pf;
  for (int i=0; i<6; i++) {   xx[i] = 0.0;  }
  for (int i=0; i<N; i++) {
    x = random(100);
    if      (x<Pa) { shape = 1; xx[0]++; }
    else if (x<Pb) { shape = 2; xx[1]++; }
    else if (x<Pc) { shape = 3; xx[2]++; }
    else if (x<Pd) { shape = 4; xx[3]++; }
    else if (x<Pe) { shape = 5; xx[4]++; }
    else { shape = 6; xx[5]++; }
  }
    for (int i=0; i<6; i++) {   
    print(i+1);      print("   "); 
    print(xx[i]/(float)N*100.0); print("\n");
  }
  println(" pi ");    
  // pi
  Pa = 0.0;
  float y;
  for (int i=0; i<N; i++) {
    x = random(-1,1);  y = random(-1,1);
    if(x*x+y*y < 1) Pa++;
  }
  print("pi = "); print(Pa/float(N)*4.0); print("\n");
  println();
  println(" random seed ");    
  // seed
  randomSeed(100);
  for(int i=0;i<5;i++) {print(random(100)); print(" ");}               
  print("\n");
  randomSeed(100);
  for(int i=0;i<5;i++) {print(random(100)); print(" ");}
  print("\n");
  randomSeed(100);
  for(int i=0;i<5;i++) {print(random(100)); print(" ");}
  print("\n");
  randomSeed(70);
  for(int i=0;i<5;i++) {print(random(100)); print(" ");}
  print("\n");
  
}
