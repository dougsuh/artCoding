float x1,x2,y1,y2,d1,d2;
void setup(){
   size(600,400);
   x1 = 100; y1 = 200; d1 =10;
   x2 = 300; y2 = 200; d2 =50;
}
void draw(){ // called 60times in 1 second
    background(0,255,255); // cyan   
  preap(x1,y1,d1);
  dog(x2,y2,d2);
   x1 = x1 + 2;
   y2 = y2 + 3;
   if(x1>width) x1 = 0;
   if(y2>height) y2 = 0;
}
