// Sep. 2024 CoA HW2
void setup(){
  size(800,600);
  kirby(100,300,3);
  bear(300,300,8);
  candle(500,300,8);
  face(500,100,8);
  space(300,100,5);
  minsu(700, 100, 0.6);
  drawPig(400, 500, 0.8);  
  maru(200,500,50);
}
void minsu(float x, float y, float m){ // minsoo lee
  stroke(0);
  fill(250, 224, 212);
  ellipse(x, y, 100*m, 200*m); // face
  fill(255);
  circle(x-50*m, y-10*m, 40*m); //left eye
  circle(x+50*m, y-10*m, 40*m); //right eye
  fill(250, 224, 212);
  rect(x-10*m, y-30*m, 20*m, 80*m); // nose
  fill(0);
  circle(x-55*m, y-10*m, 25*m); // left pupil
  circle(x+55*m, y-10*m, 25*m); //right pupil
  fill(255,0,0);
  arc(x-10*m, y+80*m, 40*m, 20*m, 0, PI); // mouth
  noStroke();
  fill(153, 103, 0);
  ellipse(x, y-70*m, 220*m, 50*m); // hat
  circle(x, y-100*m, 100*m); //hat
}

void space(float yang, float heejun, float d){ // Heejun Yang
fill(#DCDCDC);
stroke(0);
 rect(yang+d,heejun+13.5*d,4*d,5*d); //right leg
 rect(yang-3*d,heejun+13.5*d,6*d,5*d); //left leg
 rect(yang-4.5*d,heejun+3*d,10.5*d,11*d); //body
 rect(yang+6*d,heejun+4*d,3*d,8*d); //body bag
 rect(yang,heejun+8.5*d,3*d,3*d); //left arm
 fill(#DCDCDC); 
 circle(yang,heejun,14*d); // helmet
 fill(0);
 arc(yang,heejun,14*d,14*d,PI*3/4,PI*11/8); //helmet2
 fill(#DAA520);
 arc(yang,heejun,13*d,13*d,PI*3/4,PI*11/8); //glass
 fill(#dcdcdc);
 circle(yang,heejun,d); //glass2
}
void kirby(float x, float y, float d){ // Minkyun Kim
  fill(240,34,83);
  arc(x-15*d,y+17.5*d,20*d,5*d,0,2*PI); //left leg
  arc(x+15*d,y+17.5*d,20*d,5*d,0,2*PI); //right leg
  fill(255,160,200);
  arc(x-18*d,y-7.5*d,12*d,15*d,0,2*PI); //left arm
  arc(x+18*d,y-7.5*d,12*d,15*d,0,2*PI); //right arm
  circle(x,y,40*d); //body
  fill(7,20,170);
  arc(x-5*d,y-9*d,5*d,11*d,0,2*PI); //left eye
  arc(x+5*d,y-9*d,5*d,11*d,0,2*PI); //right eye
  fill(200,30,60);
  triangle(x-3*d,y-2*d,x+3*d,y-2*d,x,y+3*d); //mouth
}
void face(float x, float y, float d){ // Changhyuck Song
fill(#fbceb1);
circle(x, y, 22*d); // face
fill(0);
circle(x-6*d, y, 6*d); // left eye
circle(x+6*d, y, 6*d); // right eye
fill(255,0,0);
arc(x, y+4*d, 6*d, 2*d, PI, 2*PI); // mouth
fill(255);
circle(x-7*d, y-d, 2*d); // left tear
circle(x+5*d, y-d, 2*d); // right tear
rect(x-3*d, y+4*d, 6*d, d); // teeth
}
void bear(float x, float y, float d){ // Yesung Kim
 fill(#B98420);
 arc(x-7*d,y-6.2*d,4*d,7*d,0,2*PI); //귀
arc(x+7*d,y-6.2*d,4*d,7*d,0,2*PI);
 circle(x,y,20*d);   //얼굴
fill(0,0,0);
 arc(x-3*d,y-4*d,5*d,1.5*d,0,2*PI);  //눈썹
arc(x+3*d,y-4*d,5*d,1.5*d,0,2*PI);
 circle(x-3*d,y-2*d,3*d);  //눈
circle(x+3*d,y-2*d,3*d);  
fill(255,255,255);
 circle(x-3*d,y-2*d,1.7*d); //눈동자
circle(x+3*d,y-2*d,1.7*d);
 circle(x,y+d,2.6*d); //코
fill(#B98420);
 arc(x-4*d,y+2.3*d,8*d,3*d,0,PI/2); //입
arc(x+4*d,y+2.3*d,8*d,3*d,PI/2,PI);
}
void candle(float x, float y, float d){ // Jaemin Kim
 fill(80);
 quad(x,y,x,y+15*d,x+20*d,y+15*d,x+20*d,y);
 fill(255,255,255);
 square(x+6*d,y+5*d,2*d);
 square(x+12*d,y+5*d,2*d);
 stroke(255,255,255);
line(x+9*d,y+7*d,x+11*d,y+7*d);
noStroke();
fill(255,164,179);
triangle(x+10*d,y-6*d,x+8*d,y,x+12*d,y);
fill(255,255,0);
circle(x+10*d,y-6*d,2*d);
}
// Jongho Lee
void drawPig(int head_x, int head_y, float scale) {
  
  // Scale 크기 비율
  float d = scale;
  
  // Body 좌표
  float body_x = head_x + 50*d;
  float body_y = head_y + 50*d;
  
  // Tail 좌표
  float tail_x = body_x + 60*d;
  float tail_y = body_y - 10*d;

  // 테두리 설정 
  stroke(200, 100, 150); // 보라색 
  strokeWeight(3); // 테두리 두께

  // 꼬리 
  noFill();
  stroke(255, 160, 180);
  strokeWeight(5);
  arc(tail_x, tail_y, 40*d, 40*d, PI/2, PI);

  // 우반신 다리
  fill(230, 150, 170); // 어두운 핑크색
  stroke(200, 100, 150);
  strokeWeight(3);
  rect(body_x - 45*d, body_y + 14*d, 20*d, 40*d, 10*d); // 우반신 앞 다리
  rect(body_x - 5*d, body_y + 14*d, 20*d, 40*d, 10*d); // 우반신 뒤 다리

  // 몸통 
  fill(255, 182, 193);
  ellipse(body_x, body_y, 100*d, 80*d); // 몸통
  
  // 머리 
  circle(head_x, head_y, 100*d); // 머리

  // 귀 
  fill(255, 204, 204); // 더 밝은 핑크색
  stroke(200, 100, 150);
  strokeWeight(3);
  
  pushMatrix(); 
  translate(head_x - 35*d, head_y - 30*d); // 왼쪽 귀 위치로 이동
  rotate(radians(40)); // 왼쪽 귀 회전
  ellipse(0, 0, 30*d, 50*d); // 왼쪽 귀
  popMatrix(); 

  pushMatrix(); 
  translate(head_x + 35*d, head_y - 30*d); // 오른쪽 귀 위치로 이동
  rotate(radians(-40)); // 오른쪽 귀 회전
  ellipse(0, 0, 30*d, 50*d); // 오른쪽 귀
  popMatrix(); 
  
  // 입
  fill(255, 0, 0); // 빨간색
  stroke(200, 0, 0); // 붉은 빨강
  ellipse(head_x, head_y + 30*d, 10*d, 15*d); // 타원형 입
  
  // 코 
  fill(255, 160, 180);
  stroke(200, 100, 150);
  strokeWeight(3);
  ellipse(head_x, head_y + 15*d, 40*d, 25*d); // 코 기본 타원
  fill(0);
  noStroke();
  ellipse(head_x - 10*d, head_y + 15*d, 10*d, 15*d); // 왼쪽 코 구멍
  ellipse(head_x + 10*d, head_y + 15*d, 10*d, 15*d); // 오른쪽 코 구멍

  // 눈 
  fill(0);
  circle(head_x - 18*d, head_y - 15*d, 10*d); // 왼쪽 눈
  circle(head_x + 18*d, head_y - 15*d, 10*d); // 오른쪽 눈

  // 좌반신 다리 
  fill(255, 182, 193);
  stroke(200, 100, 150);
  strokeWeight(3);
  rect(body_x - 18*d, body_y + 17*d, 20*d, 40*d, 10*d); // 좌반신 앞 다리
  rect(body_x + 22*d, body_y + 17*d, 20*d, 40*d, 10*d); // 좌반신 뒤 다리
  
  stroke(0); // suh
  strokeWeight(1);// suh
}// Sohee Lim
void maru(float x, float y, float z){
  //모자(원)
  stroke(0);
  strokeWeight(1);
  fill(#FFBB00);
  circle(x, y, z);
  
  //모자(반원)
  fill(#FFBB00);
  arc(x, y-z*0.375, z*0.65, z*0.475, PI, 2*PI);
  
  //모자(타원)
  fill(#47C83E);
  ellipse(x, y-z*0.675, z*0.1, z*0.25);
  
  //얼굴(quad)
  fill(255);
  quad(x-z*0.3,y+z*0.1, x+z*0.3,y+z*0.1, x+z*0.2,y+z*0.5, x-z*0.2,y+z*0.5);
  
  //얼굴(arc)
  fill(255);
  arc(x, y+z*0.5, z*0.4, z*0.3, 0, PI);

//왼쪽 얼굴 무늬(arc)​
  fill(0);
  arc(x-z*0.3, y+z*0.1, z*0.6, z*0.6, 0, 0.42*PI);
  //오른쪽 얼굴 무늬(arc)​
  fill(0);
  arc(x+z*0.3, y+z*0.1, z*0.45, z*0.45, 0.58*PI ,PI);
  //왼쪽 눈동자(circle)​
  fill(255);
  circle(x-z*0.15, y+z*0.2, z*0.09);
  fill(0);
  circle(x-z*0.15, y+z*0.2, z*0.065);
  //오른쪽 눈동자(circle)​
  fill(255);
  circle(x+z*0.15, y+z*0.2, z*0.09);
  fill(0);
  circle(x+z*0.15, y+z*0.2, z*0.065);
  //코(ellipse)​
  fill(0);
  ellipse(x, y+z*0.5, z*0.125, z*0.075);
  //혀​
  fill(#CC3D3D);
  arc(x, y+z*0.6, z*0.125, z*0.25, 0, PI);
}
