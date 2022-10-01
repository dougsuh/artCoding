class ball4 {
   // constructor
   ball4() { x = width/2; y = height/2; D = 50; OP=0;};
   ball4(float xx, float yy, float dd, int oo){
       x = xx; y = yy; D = dd; OP = oo;
   };
   // member data
   float x, y, D;
   int OP;
   // member function
   void display(){
     if(OP == 0) fill(255,0,0);
     else if(OP == 1) fill(0,255,0);
     else if(OP == 2) fill(0,0,255);
     else fill(0,255,0);
     circle(x, y, D); circle(x+D, y, D); 
     circle(x, y+D, D); circle(x+D, y+D, D); 
   }
}
