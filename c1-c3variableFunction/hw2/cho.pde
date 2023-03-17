void yongwook(float x, float y, float R){
  fill(255);
  circle(x,y,R);
  circle(x-R/10, y, R*6/10);
  circle (x-R/8, y, R*4/10);
//draw connector for holder
//draw side holder bottom
  // drawing lines
  float a ,b;
  b = R*1.7/20;
  a = sqrt(sq(R*2/10) - sq(R*1.7/20));
  line(x-R/8-a, y-b, x-R/8+a, y-b);
  line(x-R/8-a, y+b, x-R/8+a, y+b);
  //filling blue spaces
  fill(0,0,255);
  beginShape();
  vertex(x-R/8-a, y-b);
  vertex(x-R/8-a, y+b);
  vertex(x-R/8+a, y+b);
  vertex(x-R/8+a, y-b);
  endShape(CLOSE);

 //drawing arc
  noFill();
  arc(x+R*0.15, y-R*0.2, R*6/10, R*6/10, PI, PI+PI*0.43);
  arc(x+R*0.15, y+R*0.2, R*6/10, R*6/10, PI-PI*0.43, PI);
ellipse(x-R*18/40, y+R/2, R*0.025, R*0.1);
 ellipse(x+R*3/10, y+R/2, R*0.025, R*0.1);
 line(x-R*18/40, y+R/2+R*0.05, x+R*3/10, y+R/2+R*0.05);
 line(x-R*18/40, y+R/2-R*0.05, x+R*3/10, y+R/2-R*0.05);

 float e,f;
 e = sqrt(sq(R/2) - sq(R*16/40));
 f = sqrt(sq(R/2) - sq(R*14/40));
 line(x-R*18/40, y+R/2-R*0.05, x-R*16/40,y + e);
 line(x+R*3/10,y+R/2-R*0.05, x+R*14/40,y + f);
 //draw rest
 ellipse(x-R*18/40, y-R/2, R*0.025, R*0.1);
 ellipse(x+R*3/10, y-R/2, R*0.025, R*0.1);
 line(x-R*18/40, y-R/2+R*0.05, x+R*3/10, y-R/2+R*0.05);
 line(x-R*18/40, y-R/2-R*0.05, x+R*3/10, y-R/2-R*0.05);
 line(x-R*18/40, y-R/2+R*0.05, x-R*16/40,y - e);
 line(x+R*3/10,y-R/2+R*0.05, x+R*14/40,y - f);
 }
