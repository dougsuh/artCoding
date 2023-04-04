int state=0; 
// 1. ready to restart
// 2. playing
// 3. gameover
float w2,h2;
void setup() {
  size(400, 400);
  w2 = width/2;
  h2 = height/2;
}
void draw() {
  if (state == 0) { // 1. ready to restart
    readyToStart(); 
  } else if (state == 1) {  // 2. playing
    playing();
  } else {            //   3. gameover
    gameOver(); 
  }
}
void mousePressed() {
  if (state == 0) { // 1. ready to restart
    if(mouseX>w2 && mouseX<w2+100 && 
       mouseY>h2 && mouseY<h2+100) state = 1;
  } else if (state == 1) {  // 2. playing
    state = 2;
  } else {            //   3. gameover
    state = 0;
  }
}
void readyToStart(){
  background(255);
  fill(0,255,255);
  rect(width/2, height/2, 100, 100);
  fill(255);
}
void playing(){
    background(0, 255, 255);
    line(width/2, height/2, mouseX, mouseY);
}
void gameOver(){
  background(255, 0, 0);
}
