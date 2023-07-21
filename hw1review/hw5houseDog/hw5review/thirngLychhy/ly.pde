void ly(float x, float y, float d){
noStroke();
fill(255,255,255);
 circle(x,y+4*d,1.8*d);//left
fill(0);
  circle(x,y+4*d,1.5*d);
fill(7,17,103);
 triangle(x,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2);  triangle(x+d*0.5,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2);
fill(11,18,43);
triangle(x+d,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2); triangle(x+d*1.5,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2);
fill(16,64,22); triangle(x+d*2,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2);
triangle(x+d*2.5,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2);
fill(33,85,78); triangle(x+d*3,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2);
triangle(x+d*2.5,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2);
fill(5,22,28);
triangle(x+d*2,y+d*4,x+d*0.5,y+d*2,x+d,y+d*2); triangle(x+d*2,y+d*4,x+d*0.5,y+d*2.5,x+d*0.5,y+d*2);
triangle(x+d*2,y+d*4,x+d*1.5,y+d*2.3,x+d*2,y+d*2.3); triangle(x+d*2,y+d*4,x+d,y+d*2.3,x+d*1.5,y+d*2.3);  
triangle(x+d*2,y+d*4,x+d*2,y+d*2.1,x+d*2.5,y+d*2.1); triangle(x+d*2,y+d*4,x+d*2.5,y+d*2.1,x+d*2.7,y+d*2.5);
fill(255,255,255); circle(x+d*4,y+d*4,d*1.8);//right
fill(0);
  circle(x+d*4,y+d*4,d*1.5);
fill(255,255,255);
circle(x+d*4,y+d*4,d*0.3);//kam left
circle(x+d*2,y+d*4,d*0.7);//jvak
  circle(x,y+d*4,d*0.3);//kam righ
fill(5,22,28);   rect(x+d*3.5,y+d*2,d,d*0.5);
}
