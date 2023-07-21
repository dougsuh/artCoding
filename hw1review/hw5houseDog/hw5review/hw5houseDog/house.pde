void preap(float x, float y, float d){
   fill(46, 136, 242);     rect(x - d, y, 4*d, 4*d);  // wall
   fill(0);     triangle(x-2*d, y,x+d,y-3*d,x+4*d,y);  // roof
   fill(93, 50, 10);       rect(x, y+2*d,d,2*d);  // door
   fill(242, 213, 46);     rect(x-d*0.5,y+d*0.5,d,d);  // window
   rect(x+d*1.5,y+d*0.5,d,d);
   line(x,y+d*0.5,x,y+d*1.5);
   line(x-d*0.5,y+d,x+d*0.5,y+d);
   line(x+2*d,y+d*0.5,x+d*2,y+d*1.5);
   line(x+d*1.5,y+d,x+d*2.5,y+d);
}
