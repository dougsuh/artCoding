Siha [] ss;
void setup() {
  size(400, 600);
  ss = new Siha[6];
  ss[0] = new SihaBoy();  
  ss[1] = new SihaGirl(200,300,100);  
  for(int i=0;i<3;i++){
    ss[i] = new SihaBoy();  
    ss[i+3] = new SihaGirl();  
  }
  ss[0].vx = ss[0].vy = 0; // mouse
  ss[4].vx = ss[4].vy = 0; // wasd
}
void draw(){
  background(0,255,255);
  for(int i=0;i<6;i++){
    ss[i].move();
    ss[i].show();
  }
}
void mousePressed(){
  ((SihaBoy)ss[0]).setxy(mouseX,mouseY);
}
void keyPressed(){
  ((SihaGirl)ss[4]).setKey(key);
}
