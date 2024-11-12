class SihaGirl extends Siha{
  SihaGirl(){
    super();
  }
  SihaGirl(float p, float q, float r){
    super(p,q,r);
  }
  void setKey(char kk){
    if(kk == 'w') y -= 5;
    else if(kk == 'a') x -= 5; 
    else if(kk == 's') y += 5; 
    else if(kk == 'd') x += 5; 
    else {}
  }
  void show(){   
    fill(0); 
    arc(x, y, d*6/5, d/5*4,PI,2*PI); 
    drawFace();
    fill(0,0,122);
    circle(x-d/5, y-d/6, d/10); // pupil
  }
}
