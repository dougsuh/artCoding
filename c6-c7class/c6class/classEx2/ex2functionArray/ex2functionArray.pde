float [] xx, yy, dd; 
void setup(){
  size(600,300);
  xx = new float[3];
  yy = new float[3];
  dd = new float[3];
  for(int i=0;i<3;i++){
    xx[i] = 100+150*i;
    yy[i] = 100+50*i;
    dd[i] = 100+50*i;
  Life(xx[i],yy[i],dd[i]);
  }
}
void Life(float x, float y, float d){
  ellipse(x,y,d,d/3*2);
  circle(x-d/5,y-d/6,d/5);
  arc(x+d/5,y-d/6,d/5,d/5,PI,2*PI);
  arc(x,y,d*2/3,d/5,0,PI);
}
