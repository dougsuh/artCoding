class SihaBoy extends Siha{
  SihaBoy(float p){ // Q1
    super();
    x = 200;
    xx = 100;
  }  
  SihaBoy(){        // Q2
    x = 150;
    y = 400;
    d = 150;
    xx = -100;
  }
  SihaBoy(float p, float q, float r){
    super(p,q,r);
    xx = 0;
  }
  float xx;
  void setxy(float c,float d){
    x = c;  y = d;
  }
  void flag(){
    circle(x+xx,y,50);
  }
  void show(){
    drawFace();
    fill(0,0,122);
    circle(x-d/5, y-d/6, d/10); // pupil
    fill(255,0,0);
    float yy = y+d/3;
    float dxy = d/10;
    triangle(x,yy,x-dxy,yy+dxy,x-dxy,yy-dxy);
    triangle(x,yy,x+dxy,yy+dxy,x+dxy,yy-dxy);
  }
}
