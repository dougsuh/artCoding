float ax, ay, ad; // object a
float bx, by, bd; // object b
float cx, cy, cd; // object c
void setup(){
  size(600,300);
  ax = 100;  ay = 100;  ad = 100;
  Life(ax,ay,ad);
  bx = 300;  by = 150;  bd = 150;
  Life(bx,by,bd);
  cx = 500;  cy = 200;  cd = 80;
  Life(cx,cy,cd);
}
void Life(float x, float y, float d){
  ellipse(x,y,d,d/3*2);
  circle(x-d/5,y-d/6,d/5);
  arc(x+d/5,y-d/6,d/5,d/5,PI,2*PI);
  arc(x,y,d*2/3,d/5,0,PI);
}
