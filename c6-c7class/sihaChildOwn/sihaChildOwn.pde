Siha [] ss;
void setup() {
  size(400, 600);
  ss = new Siha[2];
  ss[0] = new SihaBoy();  
  ss[1] = new SihaGirl(200,300,100);  
  for(int i=0;i<2;i++)
    ss[i].show();
  ((SihaBoy)ss[0]).flag();
}
