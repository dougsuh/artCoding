class ball4 {
   // constructor
   ball4() {x = width/2; y = height/2; D = 50; OP=0; };
   ball4(float xx, float yy, float dd, int oo){
       x = xx; y = yy; D = dd; OP = oo;
       vx = random(-3,3);
       vy = random(-4,4);
   };
   // member data
   float x, y, vx, vy, D;
   int OP;
   // member function
   void update(){
     x += vx;
     y += vy;
     if(y<0) vy = random(1,3);
     if(y>height) vy = random(-3,-1);
     if(x<0) vx = random(1,3);
     if(x>width) vx = random(-3,-1);
   }
   void display(){
     if(OP == 0) fill(255,0,0);
     else if(OP == 1) fill(0,255,0);
     else if(OP == 2) fill(0,0,255);
     else fill(0,255,0);
     circle(x, y, D); circle(x+D, y, D); 
     circle(x, y+D, D); circle(x+D, y+D, D); 
   }
}
