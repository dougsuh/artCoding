int toggle = 1,count = 0;
void setup(){
  size(600,400);
  frameRate(5);
}
void draw(){
  background(0,255,255);
  if((count++ % 10) == 0){ 
    if(toggle == 0) toggle = 1;
    else toggle = 0;
  }
  println(count);
  smile();
}
void smile(){
  if(toggle == 0) fill(255,0,0);
  else fill(255);
  circle(300,200,200);
  fill(0,0,255);
  circle(250,180,50);
  circle(350,180,50);
  noFill();
  arc(300,220,150,100,0,PI);
}
