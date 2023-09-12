class vichea {
  vichea() {
    x = random(width);
    y = random(height);
    d = random(0.5, 2);
    vx = random(3,6);
    vy = random(3,6);
  }
  vichea(float a,float b,float c) {
    x = a;     y = b;    d = c;
    vx = random(3,6);
    vy = random(3,6);
  }
  float x, y, d, vx, vy;
  // member functions
  void vich() {
    y += vy;
    x += vx;
    if (y > height || y < 0) vy = -vy;
    if (x > width || x < 0) vx = -vx;
  }
  void chan() {
    fill(255);
    smooth();
    strokeWeight(3);
    rect(x+15*d, y+12*d, d*40, d*12);
    fill(0, 0, 205);
    rect(x+17*d, y+78*d, d*13, d*45);//rect(285,490,60,190);
    rect(x+40.2*d, y+48*d, d*12, d*75);//rect(404,490,60,190); //leg
    //rect(x+15*d,y+78*d,d*20,d*8.4);rect(275,490,200,42); //conector
    fill(0, 0, 205);
    rect(x+31*d, y+32*d, d*8, d*16);//;rect(355,260,40,80); //neck
    fill(0, 0, 205);
    rect(x+7.4*d, y+42*d, d*55, d*8);//rect(237,310,275,40); //arm connecctor
    fill(0, 0, 205);
    rect(x-2.6*d, y+42*d, d*10, d*32);//rect(187,310,50,160);
    rect(x+62.2*d, y+42*d, d*10, d*32);//rect(511,310,50,160); //arme
    circle(x+2.6*d, y+72.8*d, d*12);//circle(213,464,60);
    circle(x+67.4*d, y+72.8*d, d*12);//circle(537,464,60);
    fill(0, 0, 205);
    square(x+20*d, y+4*d, d*30);//square(300,120,150); //head
    fill(255, 255, 0);
    circle(x+34*d, y-8*d, d*8);//circle(370,60,40); //light ball
    line(x+34*d, y+4*d, x+34*d, y-4*d);//line(370,120,370,80); //wire
    circle(x+28*d, y+14*d, d*8);//circle(340,170,40);
    circle(x+42*d, y+14*d, d*7);//circle(410,170,35); //eye
    fill(0);
    circle(x+28*d, y+14*d, d*4);//circle(340,170,20);
    circle(x+42*d, y+14*d, d*4);//circle(410,170,15); //sensor eye
    fill(255, 255, 255);
    square(x+32*d, y+22*d, d*6);//square(360,210,30); //mouse
    line(x+35*d, y+28*d, x+35*d, y+22*d);//line(375,240,375,210);
    line(x+38*d, y+25*d, x+32*d, y+25*d);//line(390,225,360,225);
    fill(0, 0, 205);
    rect(x+13*d, y+35*d, d*44, d*50);//rect(265,290,220,220); //body
  }
}// end of class
