class Piseth {
  Piseth() {   };
  Piseth(float r) {
   d = 100.*r;
    float x = random(4);
    if(x<1) cc = 0;
    else if(x<2) cc = 1;
    else if(x<3) cc = 2;
    else cc = 3;
  } 
  float d;
  int cc;
  void Life(float x, float y) {
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
}
