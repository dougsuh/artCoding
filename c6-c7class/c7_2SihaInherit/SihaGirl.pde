class SihaGirl extends Siha{
  SihaGirl(float p, float q, float r){
    super(p,q,r);
  }
  void drawHair(){   
    fill(0); 
    arc(x, y, d*6/5, d/5*4,PI,2*PI); 
    drawFace();
    fill(0,0,122);
    circle(x-d/5, y-d/6, d/10); // pupil
  }
}
