int tt; // time control
int state=0; // state
float x1,y1,x2,y2;
void setup(){
  size(800,600);
  x1 = 100;
  y1 = height/2;
}
void draw(){
  if(state == 0){
    background(0,255,255);
    fill(0,0,255);
    square(width/2,height/2,200);
  } else if(state == 1){
    background(255,255,0);
    fill(255,0,0);
    circle(x1,y1,100);// target
    x1 += 3;
    if(x1>width) x1 = 0;
    x2 = mouseX;
    y2 = mouseY;
    fill(0,0,255);
    circle(x2,y2,50);// target    
  } else {  // state 2
    background(255,0,0);
    fill(0);
    textSize(50);
    text("gameover",width/2,height/2);
    if(tt++ >180) state = 0;
  }
}
void mouseReleased(){
  if(state==0){
    if(mouseX>width/2 && mouseX<width/2+200)
    if(mouseY>height/2 && mouseY<height/2+200)
         state = 1;
  } else if(state == 1){
    if(distance(x1,y1,x2,y2)<100){ state = 2; tt = 0; }
  } else if(state == 2) state = 0;
}
float distance(float a,float b, float c, float d){
  float dd;
  dd = sqrt((a-c)*(a-c)+(b-d)*(b-d));
  return dd;
}
