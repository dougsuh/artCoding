// Intro 3. 12 variables  --> an array
void setup() {
  float [] x= {-10, 5, 10, 15, 16, 17, 
                20, 25, 19, 17, 15, 5};
  float [] dx;      float xav = 0;
  dx = new float[12];                                           
  // step 1
  for (int i=0; i<12; i++) { xav += x[i];}
  xav /= 12;
  // step 2
  for (int i=0; i<12; i++) {
    dx[i] = x[i]-xav;
    println(dx[i]);
  }
}
