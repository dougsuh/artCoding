//  method 1: 3 smiles with class and array
smile [] aa;
void setup() {
  size(600, 300);
  aa = new smile[3];
  for (int i=0; i<3; i++) {
    aa[i] = new smile(i);
  }
}
void draw() {
  background(0, 255, 255);
  for (int i=0; i<3; i++) {
    aa[i].cam();
    aa[i].bodia();
  }
}
/*  3 smiles no function
 float a1, b1, c1, vx1, vy1;
 int oo1;
 float a2, b2, c2, vx2, vy2;
 int oo2;
 float a3, b3, c3, vx3, vy3;
 int oo3;
 
 void setup(){
 int ii=10;
 cc(ii);
 print(ii + " in setup( )\n");
 size(600,300);
 a1 = 150;
 b1 = 0;
 c1 = 50;
 oo1 = 2;
 vx1 = vy1 = 5;
 
 a2 = 150;
 b2 = 100;
 c2 = 50;
 oo2 = 3;
 vx2 = random(2,5);
 vy2 = random(2,5);
 
 a3 = 50;
 b3 = 100;
 c3 = 50;
 oo3 = 1;
 vx3 = 0;
 vy3 = random(2,5);
 }
 void cc(int dd){
 dd = 2*dd;
 print(dd + " in cc( )\n");
 }
 void draw(){
 background(0,255,255);
 b1 += vy1;
 a1 += vx1;
 smile(a1,b1,c1,oo1);
 if(b1 > height || b1 < 0) vy1 = -vy1;
 if(a1 > width || a1 < 0) vx1 = -vx1;
 
 b2 += vy2;
 a2 += vx2;
 smile(a2,b2,c2,oo2);
 if(b2 > height || b2 < 0) vy2 = -vy2;
 if(a2 > width || a2 < 0) vx2 = -vx2;
 
 b3 += vy3;
 a3 += vx3;
 smile(a3,b3,c3,oo3);
 if(b3 > height || b3 < 0) vy3 = -vy3;
 if(a3 > width || a3 < 0) vx3 = -vx3;
 }*/
/*  1 smile
 float a, b, c, vx, vy;
 int oo;
 
 void setup(){
 size(600,300);
 a = 150;
 b = 0;
 c = 50;
 oo = 2;
 vx = vy = 5;
 }
 void draw(){
 background(0,255,255);
 b += vy;
 a += vx;
 smile(a,b,c,oo);
 if(b > height || b < 0) vy = -vy;
 if(a > width || a < 0) vx = -vx;
 }*/
