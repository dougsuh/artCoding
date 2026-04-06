void setup() {
  int [] hits = {0,0,0,0,0,0};
  int Ntry = 10000,x;
  float [] pdf = new float[6];
  for (int n = 0; n < Ntry; n++) { 
      x = castDice();
      hits[x-1]++;
  }
  for (int i = 0; i < 6; i++){
      pdf[i] = (float)hits[i] / Ntry;
      println((i+1) + " " + pdf[i]);
  }
}
int castDice(){
  float r = random(1);
  if(r < 1. / 6.) return 1;
  else if(r < 2. / 6.) return 2;
  else if(r < 3. / 6.) return 3;
  else if(r < 4. / 6.) return 4;
  else if(r < 5. / 6.) return 5;
  else return 6;
}
