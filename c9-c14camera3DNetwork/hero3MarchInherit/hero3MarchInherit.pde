// Fall 2024, Jaemin Kim, Heejun Yang, Sohee Lim
heroes [] hh;
void setup(){
  size(600,800,P3D);
  hh = new heroes[60]; 
  for(int i=0;i<5;i++){
    float x = -200+100*i;
    for(int j=0;j<4;j++){
     hh[i+5*j] = new santa(x,-100*j,-1000-100*j);
     hh[20+i+5*j] = new boxman(x,-500-100*j,-1500-100*j);
     hh[40+i+5*j] = new snowman(x,-1000-100*j,-2000-100*j);
    }
  }
}
void draw(){
  background(135,206,250);
  lights();
  translate(width/2,0,0);
  for(heroes s : hh) {
    s.update();   s.show();
  }
}
