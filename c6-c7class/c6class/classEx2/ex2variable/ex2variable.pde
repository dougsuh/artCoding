float ax, ay, ad; // object a
float bx, by, bd; // object b
float cx, cy, cd; // object c
void setup(){
  size(600,300);
  ax = 100;  ay = 100;  ad = 100;
  ellipse(ax,ay,ad,ad/3*2);
  circle(ax-ad/5,ay-ad/6,ad/5);
  arc(ax+ad/5,ay-ad/6,ad/5,ad/5,PI,2*PI);
  arc(ax,ay,ad*2/3,ad/5,0,PI);
  
  bx = 300;  by = 150;  bd = 150;
  ellipse(bx,by,bd,bd/3*2);
  circle(bx-bd/5,by-bd/6,bd/5);
  arc(bx+bd/5,by-bd/6,bd/5,bd/5,PI,2*PI);
  arc(bx,by,bd*2/3,bd/5,0,PI);
  
  cx = 500;  cy = 200;  cd = 80;
  ellipse(cx,cy,cd,cd/3*2);
  circle(cx-cd/5,cy-cd/6,cd/5);
  arc(cx+cd/5,cy-cd/6,cd/5,cd/5,PI,2*PI);
  arc(cx,cy,cd*2/3,cd/5,0,PI);
}
