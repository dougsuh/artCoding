int goal=0, nogoal=0;
float x=0, y;
void setup() {
  size(500, 300);
  y = random(height);
}
void draw() {
  background(0, 255, 0);
  rect(width-10,100,10,100);
  if (goal == 0 && nogoal == 0) { // play
    x += 5;
    if (x>width) {
      if (y > 100 && y<200) goal = 60;
      else nogoal = 60;
    }
    circle(x, y, 50);
  } else { // goal or nogoal
    fill(256, 200, 200);
    rect(0, 300, 1200, 200);
    fill(0);
    textSize(50);
    if (goal != 0) {
      goal--;
      text("GOAL", 100, 100);
      if (goal == 0) nextKick();
    } else {
      nogoal--;
      text("TRY AGAIN", 100,100);
      if (nogoal == 0) nextKick();
    }
  }
}
void nextKick() {
  x = 0;
  y = random(height);
  fill(255);
}
