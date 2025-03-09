// Fall 2024, Jaemin Kim, Heejun Yang, Sohee Lim
santa [] ss;
boxman [] bb;
snowman [] sn;
void setup(){
  size(600,800,P3D);
  ss = new santa[20]; 
  bb = new boxman[20]; 
  sn = new snowman[20];
  for(int i=0;i<5;i++){
    float x = -200+100*i;
    for(int j=0;j<4;j++){
     ss[i+5*j] = new santa(x,-100*j,-1000-100*j);
     bb[i+5*j] = new boxman(x,-500-100*j,-1500-100*j);
     sn[i+5*j] = new snowman(x,-1000-100*j,-2000-100*j);
    }
  }
}
void draw(){
  background(135,206,250);
  lights();
  translate(width/2,0,0);
  for(santa s : ss) {
    s.update();   s.show();
  }
  for(boxman b : bb) {
    b.update();   b.show();
  }
  for(snowman b : sn){
    b.update();   b.show();
  }
}
