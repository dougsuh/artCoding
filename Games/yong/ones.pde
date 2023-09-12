void bear(float x, float y, float d) {

  fill(228, 164, 110);
  stroke(228, 164, 110);
  ellipse(x, y, d*14, d*11);//얼굴

  fill(255, 255, 255);
  circle(x, y+d, d*2.5);//입주변

  fill(56, 25, 23);
  stroke(56, 25, 23);
  ellipse(x, y+0.5*d, d*1.4, d);
  ellipse(x, y+d, d*0.2, d);//입


  fill(228, 164, 110);
  stroke(228, 164, 110);
  circle(x-4*d, y-5*d, d*4);
  circle(x+4*d, y-5*d, d*4);//귀

  fill(38, 38, 40);
  stroke(38, 38, 40);
  circle(x-2*d, y, d*0.8);
  circle(x+2*d, y, d*0.8); //눈

  fill(226, 112, 73);
  stroke(226, 112, 73);
  circle(x-3*d, y+d, d*0.92);
  circle(x+3*d, y+d, d*0.92);//볼
}
void cat(float c, float d, float e) {
  fill(170, 170, 170);
  ellipse(c, d, e*65, e*40);
  fill(170, 170, 170);
  triangle(c-e*20, d-e*15, c-e*20+e*10, d-e*15, c-e*20+e*5, d-e*15-e*10);
  fill(255, 125, 0);
  triangle(c-e*20, d-e*15, c-e*20+e*10, d-e*15, c-e*20+e*5, d-e*15-e*5);
  fill(170, 170, 170);
  triangle(c+e*10, d-e*15, c+e*10+e*10, d-e*15, c+e*10+e*5, d-e*15-e*10);
  fill(255, 125, 0);
  triangle(c+e*10, d-e*15, c+e*10+e*10, d-e*15, c+e*10+e*5, d-e*15-e*5);
  fill(255);
  circle(c-e*10, d-e*5, e*10);
  fill(0);
  circle(c-e*10, d-e*5, e*5);
  fill(255);
  circle(c-e*10+20*e, d-e*5, e*10);
  fill(0);
  circle(c-e*10+20*e, d-e*5, e*5);
  triangle(c, d, c-e*2.5, d+e*5, c+e*2.5, d+e*5);
  fill(255, 150, 30);
  circle(c-e*15, d+e*5, e*5);
  circle(c-e*15+e*30, d+e*5, e*5);
  strokeWeight(e*0.3);
  line(c-e*15, d+e*5, c-e*15-e*5, d+e*5-e*5);
  line(c-e*15, d+e*5, c-e*15-e*5, d+e*5+e*5);
  line(c-e*15+e*30, d+e*5, c-e*15+e*35, d+e*5+e*5);
  line(c-e*15+e*30, d+e*5, c-e*15+e*35, d+e*5-e*5);
  strokeWeight(e);
  line(c, d+e*5, c, d+e*10);
  fill(170, 170, 170);
  arc(c-e*2.5, d+e*10, e*5, e*2.5, 0, PI);
  arc(c+e*2.5, d+e*10, e*5, e*2.5, 0, PI);
  strokeWeight(e*0.1);
}
void kero(float x, float y, float d) {
  fill(255, 255, 0);
  ellipse(x-d*8, y+d*5, d*12, d*9);//왼쪽두건
  ellipse(x+d*8, y+d*5, d*12, d*9);//오른쪽쪽두건
  fill(0, 128, 0);
  circle(x, y, d*20);//얼굴형
  fill(255, 255, 255);
  circle(x-5*d, y-2*d, d*6);//왼쪽눈 바탕
  circle(x+5*d, y-2*d, d*6);//오른쪽눈 바탕
  ellipse(x, y+8*d, d*10.3, d*4);//입주변(하얀색 바탕)
  fill(0, 0, 0);
  circle(x-5*d, y-2*d, d*3.5);//왼쪽눈동자
  circle(x+5*d, y-2*d, d*3.5);//오른쪽눈동자
  fill(255, 255, 0);
  arc(x, y-d*5.3, d*17.1, d*10.7, PI, 2*PI);//이마
  fill(255, 0, 0);
  ellipse(x, y+d*7, d*2.5, d*2);//입
  beginShape();
  vertex(x, y-d*9);
  vertex(x+d*0.8, y-d*8);
  vertex(x+d*2.2, y-d*8);
  vertex(x+d, y-d*7.2);
  vertex(x+d*1.5, y-d*6);
  vertex(x, y-d*6.7);
  vertex(x-d*1.5, y-d*6);
  vertex(x-d*1.1, y-d*7.2);
  vertex(x-d*2.2, y-d*8);
  vertex(x-d*0.8, y-d*8);
  endShape();//모자에 별
}
