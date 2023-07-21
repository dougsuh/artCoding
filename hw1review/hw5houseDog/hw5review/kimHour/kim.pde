void kimchar(float x,float y, float d){
 
  strokeWeight(d*0.05);
  fill(255,105,180);
    arc(x+1.8*d,y+2.2*d,d*0.55,d*1.5,0,PI); //feet
      arc(x+2.3*d,y+2.2*d,d*0.55,d*1.5,0,PI);
      //feet
     fill(0,200,255);
      rect(x+0.7*d,y+0.3*d,d*0.8,d*1.8); //beg
        fill(255,105,180);
    ellipse(x+2*d,y+1*d,d*2,d*3);
  // body
  ellipse(x+2.5*d,y+0.5*d,d*1.5,d*0.8); //eye
  fill(0,255,255);
   ellipse(x+2.5*d,y+0.5*d,d*1.2,50);  //glasses
  //eye
  fill(50,150,200);
      rect(x+1.8*d,y-1.1*d,d*0.4,d*0.2);
   circle(x+2*d,y-1.5*d,d); // balloon
  strokeWeight(5);
    line(x+2*d,y-0.9*d,x+2*d,y-0.5*d);
}
