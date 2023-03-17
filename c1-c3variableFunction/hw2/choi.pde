 void yunhee(float x,float y, float d){
   //face
  fill(76,132,132);
  noStroke();
  ellipse(x,y,d*5.5,d*4.8);
  fill(246,224,134);
  arc(x,y,d*5.5,d*4.8,0,PI);
//eye
  fill(255,255,255);
  ellipse(x-d*1.2,y-d*0.7,d*0.8,d*1.2);
  ellipse(x+d*1.2,y-d*0.7,d*0.8,d*1.2);
  fill(0,0,0);
  circle(x-d*1.1,y-d*0.90,d/8);
  circle(x+d*1.1,y-d*0.90,d/8);
  //teeth
  fill(255,255,255);
  beginShape();
  vertex(x-d*0.70,y);
  vertex(x-d*0.60,y-d*0.15);
  vertex(x-d*0.50,y);
  vertex(x+d*0.50,y);
  vertex(x+d*0.60,y-d*0.15);
  vertex(x+d*0.70,y);
  endShape();
//left ear
  fill(76,132,132);
  beginShape();
  vertex(x-d*1.7,y-d*1.8);
  bezierVertex(x-d,y-d*6.5,x-d*0.1,y-d*2.4,x,y-d*2.4);
  endShape();
  //right ear
  beginShape();
  vertex(x+d*1.7,y-d*1.8);
  bezierVertex(x+d,y-d*6.5,x+d*0.1,y-d*2.4,x,y-d*2.4);
  endShape();
}
