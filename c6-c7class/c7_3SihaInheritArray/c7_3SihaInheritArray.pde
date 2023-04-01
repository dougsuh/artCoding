Siha [] b;
void setup() {
  size(600, 300);
  b = new Siha[2];
  b[0] = new SihaGirl(150, 150, 200);
  b[1] = new SihaBoy(450, 150, 200);
  for(int i=0;i<2;i++){ b[i].show(); } 
}
