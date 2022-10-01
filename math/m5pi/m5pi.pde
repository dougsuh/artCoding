//    calculate pi = 3.141592
//    Doug Young Suh
//    Nov. 4 2019
//
//    Based on Monte-Carlo method
  long n,N = 10000;
  float x,y;
  long hit=0;  
void setup() {
  size(800, 800);  
  background(0);
  fill(0);
  stroke(255);
  circle(width/2,height/2,width);
  n = 0;
  frameRate(1000); 
  
}
void draw(){  
  if(++n<N){
    x = random(-1,1);         
    y = random(-1,1);
    if(x*x + y*y < 1.0) {
      hit++;
      unitcircle(x,y,color(0,0,255));
    }
    else 
      unitcircle(x,y,color(255,255,0));
  } else if(n == N){
    
      textSize(64);
      fill(255);
      text(hit/(float)N*4.0,width/2,height/2);
  }
}
void unitcircle(float x,float y,color c){
  fill(c);
  circle(width/2+x*width/2,height/2+y*height/2,10);
}
