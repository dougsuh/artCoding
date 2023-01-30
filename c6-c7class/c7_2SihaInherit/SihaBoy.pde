class SihaBoy extends Siha{
  SihaBoy(float p, float q, float r){
    super(p,q,r);
  }
  void show(){
    Life();
    fill(0,0,122);
    circle(x-d/5, y-d/6, d/10); // pupil
    fill(255,0,0);
    float yy = y+d/3;
    float dxy = d/10;
    triangle(x,yy,x-dxy,yy+dxy,x-dxy,yy-dxy);
    triangle(x,yy,x+dxy,yy+dxy,x+dxy,yy-dxy);
  }
}
