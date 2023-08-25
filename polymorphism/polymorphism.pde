void setup(){
  size(400,300);
  smile(100,150);    // Line 6
  smile(300,150,15); // Line 11
}
void smile(float x, float y){
    circle(x,y,100);
    circle(x-30,y-20,20); 
    circle(x+30,y-20,20); 
 }
 void smile(float x, float y, float d){   
    circle(x,y,10*d);
    square(x-3*d,y-2*d,2*d); 
    square(x+2*d,y-2*d,2*d); 
 }
