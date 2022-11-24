float life,univ,siha;
int option = 0;
void  setup(){
   size(800,300); 
   life = 200;  univ = 150;   siha = 3;
}
void draw(){
  background(255,255,0);
  circle(life,univ,100);
  life += siha;
  if(life > width) life = 0;
}
void mousePressed(){
  siha++;
  if(siha > 20){
    siha = 3;
    if(option == 0){
      fill(255,0,0);     option = 1;
    } else {
      fill(255);         option = 0;
    }
  }
}
