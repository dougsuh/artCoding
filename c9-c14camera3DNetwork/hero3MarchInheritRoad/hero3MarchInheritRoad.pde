heroes [] hh;
heroes [] pp;
void setup(){
  size(600,800,P3D);
  hh = new heroes[60]; 
  pp = new heroes[120];   for(int i = 0;i<60;i++){
    float x = random(30);
    if(x<10){
      pp[i] = new santa(-350,-1000+50*i,-2000+50*i,90);
      pp[i+60] = new boxman(350,-1000+50*i,-2000+50*i,-90);
    }
    else if(x<20){
      pp[i] = new snowman(-350,-1000+50*i,-2000+50*i,90);
      pp[i+60] = new santa(350,-1000+50*i,-2000+50*i,-90);
    } else {
      pp[i] = new boxman(-350,-1000+50*i,-2000+50*i,90);
      pp[i+60] = new snowman(350,-1000+50*i,-2000+50*i,-90);
    }
  }
  for(int i=0;i<5;i++){
    float x = -200+100*i;
    for(int j=0;j<4;j++){
     hh[i+5*j] = new santa(x,-100*j,-1000-100*j,0);
     hh[20+i+5*j] = new boxman(x,-500-100*j,-1500-100*j,0);
     hh[40+i+5*j] = new snowman(x,-1000-100*j,-2000-100*j,0);
    }
  }
}
void draw(){
  background(135,206,250);
  lights();
  translate(width/2,0,0);
  road();
  for(heroes s : hh) {
    s.update();   s.show();
  }
  for(heroes s : pp) {
     s.show();
  }
}
void road(){
  fill(200,100,50);
  pushMatrix();
  translate(0,100,-1000);
  rotateX(radians(-45));
  box(600,10,3000); // center at (width/2,100,-1000)
  popMatrix();
}
