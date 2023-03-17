void sungwook(float x, float y, float d){
 translate(0,height);
  scale(1., -1.);
 noStroke();
    ellipse(x,y-75,24*d,12*d);
  fill(208,102,50);
  ellipse(x,y-60,19*d,8*d);
  fill(253,243,171);
  arc(x,y-60,18*d,5*d,PI,2*PI);
  fill(253,243,171);
  quad(x/3+30,y-60,2*x-180,y-60,x+210,2*y-70,x/2+15,2*y-70);
  fill(208,102,50);
  ellipse(x,2*y-70,14*d,3*d);
  beginShape();
  vertex(x/2+15,y+210);
  bezierVertex(x/2-15,2*y-140,x/2+6,y+93,x/2+33,y+114);
  bezierVertex(x/2+63,2*y-140,2*x/3+15,y+105,2*x/3+30,y+75);
  bezierVertex(2*x/3+36,y+55,2*x/3+84,y+55,2*x/3+90,y+75);
  bezierVertex(x-45,y+105,x-5,y+105,x,y+75);
  bezierVertex(x+6,y+60,x+24,y+59,x+30,y+75);
  bezierVertex(x+45,y+114,x+105,y+105,x+110,y+80);
  bezierVertex(2*x-300,y-15,x+180,y+15,4*x/3+24,y+75);
  bezierVertex(4*x/3+24,y+75,4*x/3+21,y+105,4*x/3+45,y+55);
  bezierVertex(4*x/3+60,y+35,4*x/3+105,y+105,4*x/3+60,y+210);
  endShape();
  fill(0);
  ellipse(x-30,y-5,d,2*d);
  ellipse(x+30,y-5,d,2*d);
  translate(0,height);
  scale(1., -1.);

}
