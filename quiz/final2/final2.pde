void setup() {
  size(800, 800);
  pa [] pp;
  ch1 [] c1;
  ch2 [] c2;
  pp = new pa[3];
  c1 = new ch1[3];
  c2 = new ch2[3];
  for (int i=0; i<3; i++) {
    pp[i] = new pa(100,100+200*i,160/(i+1));
    c1[i] = new ch1(300,100+200*i,160/(i+1));
    c2[i] = new ch2(500,100+200*i,160/(i+1));
    pp[i].show();
    c1[i].evshow();
    c2[i].evshow();
  }
}
