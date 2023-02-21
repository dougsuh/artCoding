class Piseth {
  Piseth() {   };
  Piseth(float p, float q, float r,int c) {
    x = p;     y = q;     d = r;
    cc = c % 4;
    vx = random(-6,6);
    vy = random(-3,3);
  
  } 
  float x, y, d,vx,vy;
  int cc;
  void Life() {
    if(cc == 0) fill(255);
    else if(cc==1) fill(255,0,0);
    else if(cc==2) fill(0,255,0);
    else  fill(0,0,255);
    // suh 100 = d   200 = 2*d  50= d/2
   circle(x, y, d);
    circle(x-2*d, y, d);
    circle(x-d, y-d, d);
    circle(x-d, y+d, d);
    stroke(255, 255, 0);
    strokeWeight(5);
    fill(126, 46, 31);
    //d = d*10/5.0;
    circle(x-d, y, d); //head
    fill(255, 0, 0);
    ellipse(x-1.50*d, y, d/4, d/4);
    ellipse(x-d/2, y, d/4, d/4);
    arc(x-d, y+d/2, d*2/5, d*2/5, 0, PI);
    stroke(0, 128, 0);
    strokeWeight(10);
    line(x-d, y+1.60*d, x-d, y+4*d);
    stroke(0);
    strokeWeight(1);
  }
  void act(){
    x += vx;
    y += vy;
    if(x<0) vx = -vx;
    else if(x>width) vx = -vx;
    if(y<0) vy = -vy;
    else if(y>height) vy = -vy;
  }
}
