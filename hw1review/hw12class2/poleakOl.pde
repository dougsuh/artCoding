
class poleak {
  poleak() {
    x = random(width);
    y = random(height);
    d = random(5, 5);
    vy = random(4, 5);
    vx = random(4, 5);
  }
  poleak(float a, float b, float c) {
    x = a;
    y = b;
    d = c;
    vy = random(4, 5);
    vx = random(4, 5);
  }
  float x, y, d, vy, vx;
  void po() {
    x += vx;
    y += vy;
    if (x> height || x<0) vx =- vx;
    if (y> height || y<0) vy =- vy;
  }
  void ol() {
    noStroke();
    fill(0);
    //head
    circle(x-10*d, y+2*d, d*4);      //circle(100,120,40);
    //body
    rect(x-10.5*d, y, d*1, d*10, d*2);  //rect(95,100,10,100,20);
    //hand
    rect(x-14*d, y+4*d, d*8, d*1, d*2);   //rect(60,140,80,10,20);
    //feet
    rect(x-11*d, y+9*d, d*2, d*1, d*2);   //rect(90,190,20,10,20);
    rect(x-11.5*d, y+9*d, d*1, d*4, d*2);   //rect(85,190,10,40,20);
    rect(x-9.5*d, y+9*d, d*1, d*4, d*2);  //rect(105,190,10,40,20);
  }
}
