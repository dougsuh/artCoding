void setup(){
  size (800,800);
  background(0,0,0);
  //left-ear
   fill (233,159,66);
  ellipse (135,330,50,170);
  //right-ear
  fill (233,159,66);
  ellipse (265,330,50,170);
  //left-leg
  fill (233,159,66);
  circle (120,440,80);
  //right-leg
  fill (245,159,66);
  circle (263,440,80);
  //left-arm
  fill (233,159,66);
  ellipse (165,420,70,130);
  //right-arm
  fill (233,159,66);
  ellipse (230,420,70,130);
  //face
  noStroke();
  fill (233,159,66);
  ellipse (200,360,230,200);
  //right-eye
  stroke (0,0,0);
  fill (255,255,255);
  strokeWeight (3);
  ellipse (260,325,50,40);
//left-eye
  ellipse (145,325,50,40);
  //brown-right-eye
  fill (175,107,20);
  noStroke();
  ellipse (256,327,39,33);
  //brown-left-eye
  fill (175,107,20);
  noStroke();
  ellipse (150,326,40,35);
  //black-left-eye
  fill (0,0,0);
  circle (155,326,25);
  //black-right-eye
  fill (0,0,0);
  circle (252,327,25);
  //white-on-left-eye
  fill(255,255,255);
  noStroke();
  circle(132,325,10);
  //white-on-top-left-eye
  fill(255,255,255);
  noStroke();
  circle(152,318,8);
  //white-on-top-right-eye
  fill(255,255,255);
  noStroke();
  circle(257,319,8);
  //nose
  fill (175,107,20);
  ellipse(202,305,10,80);
  //mouth
  fill(0,0,0);
  ellipse (200,388,100,50);
  //red-mouth
  fill (255,0,0);
  stroke(0,0,0);
  ellipse (200,393,75,40);
  //head-one
  noStroke();
  fill (175,107,20);
  ellipse(200,270,85,20);
//head-two
  noStroke();
  fill (175,107,20);
  ellipse(202,295,70,20);
  //head-three
  noStroke();
  fill (175,107,20);
  ellipse(202,320,30,10);
  //hungry
  fill(250,250,250);
  circle(230,400,20);
  circle(220,408,15);
  circle(245,406,18);
  circle(235,415,20);
  circle(240,440,10);
  circle(210,412,12);
  circle(200,412,10);
  circle(240,430,17);
//white-ellipse
  fill(255,255,255);
  ellipse (550,150,280,180);
  ellipse (430,250,100,60);
  ellipse (360,285,70,40);
  //food
  fill (245,124,15);
  ellipse(550,160,140,120);
  fill(56,150,87);
  ellipse(540,110,15,8);
}
