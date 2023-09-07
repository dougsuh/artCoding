// Jaehyuk Sim
void bear(float x, float y, float d){
  fill(228,164,110);
  stroke(228,164,110);
  ellipse(x,y,d*14,d*11.43);//얼굴
  
  fill(255,255,255);
  circle(x,y+d,d*2.5);//입주변 
  
  fill(56,25,23);
  stroke(56,25,23);
  ellipse(x,y+0.5*d,d*1.4,d);
  ellipse(x,y+d,d*0.2,d);//입 

  
  fill(228,164,110);
  stroke(228,164,110);
  circle(x-4*d,y-5*d,d*4);
  circle(x+4*d,y-5*d,d*4);//귀
  
  fill(38,38,40);
  stroke(38,38,40);
  circle(x-2*d,y,d*0.8);
  circle(x+2*d,y,d*0.8); //눈
  
  fill(226,112,73);
  stroke(226,112,73);
  circle(x-3*d,y+d,d*0.92);
  circle(x+3*d,y+d,d*0.92);//볼 
  
}
