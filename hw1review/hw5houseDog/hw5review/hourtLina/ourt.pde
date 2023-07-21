void house(float x, float y, float d){
  //Wall
  stroke(0);
  strokeWeight(3);
  fill(#F2DA8A); //egg color
  rect(x+170,y+d*0.39,d*1.1,d*0.55);
  strokeWeight(3); //Long wall
  rect(x+d*1.56,y+d*0.42,d*0.9,d*0.525);
  
  //Window
  fill(255);
  rect(x+d*0.95,y+d*0.575,d*0.15,d*0.15);
  rect(x+d*1.25,y+d*0.575,d*0.15,d*0.15);
  rect(x+d*1.75,y+d*0.575,d*0.15,d*0.15);
  rect(x+d*2.15,y+d*0.575,d*0.15,d*0.15);
  
  //First window pane
  fill(0);
  line(x+d*0.95,y+d*0.65,x+d*1.1,y+d*0.65);
  line(x+d*1.025,y+d*0.575,x+d*1.025,y+d*0.70);
  //Second window pane
  line(x+d*1.25,y+d*0.65,x+d*1.4,y+d*0.65);
  line(x+d*1.325,y+d*0.575,x+d*1.325,y+d*0.725);
  //Third window pane
  line(x+d*1.75,y+d*0.65,x+d*1.9,y+d*0.65);
  line(x+d*1.825,y+d*0.575,x+d*1.825,y+d*0.725);
  //Fourth window pane
  line(x+d*2.15,y+d*0.65,x+d*2.3,y+d*0.65);
  line(x+d*2.225,y+d*0.575,x+d*2.225,y+d*0.725);
  
  //Roof
  fill(101, 67, 33); //Satoimo Brown
  stroke(0);
  strokeWeight(3);
  triangle(x+d*0.8,y+d*0.405,x+d*1.6,y+d*0.405,x+d*1.15,y-25);
  fill(101, 67, 33); //satoimo brown
  stroke(0);
  strokeWeight(3);
  quad(x+d*1.15,y-d*0.125,x+d*1.7,y-d*0.125,x+d*2.5,y+d*0.405,x+d*1.575,y+d*0.405);
  
  //Door
  fill(175,50,0); //white
  rect(x+d*1.1,y+d*0.75,d*0.15,d*0.175);
  
  //Door lock
  fill(212,172,55);
  circle(x+d*1.21,y+d*0.85,d*0.05);
  
}
