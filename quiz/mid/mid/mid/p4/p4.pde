
void  setup(){
   size(400,300);
   float a, b, c, d;
   a = 100;
   b = 200;
   c = 150;
   d = 250;
  if(a>b || c<d) 
    circle(a, b, 50);  
  if(a>b && c<d) 
    circle(a, b, 80);  
  a = b + c;
  if(a>b || c<d) 
    circle(c+200, d-100, 100);  
  if(a>b && c<d) 
    circle(c, b-100, 150);  
}
