int state, count;
void setup() {
  size(500, 500);
  state = 0; // game start
  count = 0;
}
void draw() {
  if (state==0) {
    gamestart();
  } else if (state==1) {
    gameplay();
  } else gameover();
}// draw end

void gamestart() {
  background(0, 255, 255);
  count++;
  if (count>5*frameRate){
    state = 1; // to game play
    count = 0;
  }
  int t = 5 - count/(int)frameRate;
  textSize(50);
  text(t + " seconds left", width/2-200, height/2);
}
void gameplay() {
  background(120, 0, 0);
  float x, y;
  x=mouseX;
  y=mouseY;
  stroke(255);
  line(x, y, width/2, height/2);
  fill(255, 0, 0);
  rect(width*3/4, height*3/4, 100, 100);
  textSize(50);
  text("Danger", width*3/4, height*3/4);
  if (x>width*3/4 && x<width*3/4+100) {
    if (y>height*3/4 && y<height*3/4+100) {
      state = 2; // gameover
    }
  }
}
void gameover() {
  background(0, 120, 0);
  fill(0, 255, 255);
  rect(width*2, height*2, 300, 100);
  textSize(50);
  text("restart", width/2, height/2);
  fill(255);
}
void mouseClicked() {
  if (state==2) {
    float x, y;
    x=mouseX;
    y=mouseY;
    if (x>width/2 && x<width/2+300) {
      if (y>height/2 -50 && y<height/2+5) {
        state = 0; // restart
      }
    }
  }
}
