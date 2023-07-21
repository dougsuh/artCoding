void tree(float x, float y, float d){  
  //Christmas tree
  stroke(0);
  strokeWeight(3);
  fill(175,50,0);
  rect(x-d*0.57,y+d*0.525,d*0.15,d*0.5);
  fill(#5ca904);
  triangle(x-d*0.9,y+d*0.51,x-d*0.1,y+d*0.51,x-d*0.5,y+d*0.025);
  triangle(x-d,y+d*0.21,x,y+d*0.21,x-d*0.5,y-d*0.225);
  triangle(x-d*1.1,y-d*0.04,x+d*0.15,y-d*0.04,x-d*0.5,y-d*0.475);
}
