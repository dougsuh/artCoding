 void jaesun(float x, float y, float d){
   stroke(0,0,0);
  strokeWeight(d/10);
  fill(100,100,100);
  line(x-2*d,y,x-2.5*d,y-2.5*d);
  arc(x-2*d,y,d,d,PI/2,3*PI/2);
  line(x+2*d,y,x+2.5*d,y-2.5*d);
   arc(x+2*d,y,d,d,3*PI/2,5*PI/2);
  beginShape();
  vertex(x-1.5*d,y-2*d);
  vertex(x+1.5*d,y-2*d);
  vertex(x+2*d,y-1.5*d);
  vertex(x+2*d,y+1.5*d);
  vertex(x+1.5*d,y+2*d);
  vertex(x-1.5*d,y+2*d);
  vertex(x-2*d,y+1.5*d);
  vertex(x-2*d,y-1.5*d);
  endShape(CLOSE);
  fill(50,120,200);
  square(x-1.5*d,y-1.5*d,3*d);
  stroke(255,255,255);
  strokeWeight(d/4);
  noFill();
  arc(x-0.8*d,y-0.5*d,0.7*d,0.7*d,PI,2*PI);
  arc(x+0.8*d,y-0.5*d,0.7*d,0.7*d,PI,2*PI);
  arc(x,y,2*d,2*d,0,PI);
  line(x-d,y,x+d,y);
}
