int count = 0;
int na,nb;
float x, pa, pb, y;
void setup(){
  size(300,300);  
  na = nb = 0;
  fill(255,255,0);   rect(0,0,width/2,height);
  fill(0,255,255);   rect(width/2,0,width/2,height);
}
void draw(){
  count++;
  x = random(width);
  y = random(height);
  if(x<width/2){ na++;  fill(255,0,0); }
  else     { nb++; fill(0,0,255); }
  pa = na / (float)count;
  pb = nb / (float)count;
  println(pa + "  " + pb);
  circle(x,y,10);     
}
