sky a, b, c, d, e,f,g;
void setup(){
 size(1000,1000);
 a = new sky(100,200,300,0);
 b = new sky(300,200,100,1);
 c = new sky(500,200,100,2);
 d = new sky();
 e = new sky(100,100,100,4);  
 f = new sky(500,500,500,5);   
 g = new sky(); 
}
void draw(){
  background(0,255,255);
 a.skyShow();
 b.skyShow();
 c.skyShow();
 d.skyShow();
 e.treeshow();
 f.treeshow();
 a.update();
 b.update();
 c.update();
 d.update();
}
