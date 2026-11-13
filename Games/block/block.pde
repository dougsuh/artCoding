
float ballX, ballY;
float ballSpeedX = 4;
float ballSpeedY = -4;

int paddleX;
int paddleY = 550;
int paddleW = 110;
int paddleH = 15;

int cols = 10;
int rows = 5;
boolean[][] bricks = new boolean[10][5];

int score = 0;
int lives = 3;

boolean gameStarted = false;
boolean gameOver = false;
boolean gameClear = false;

void setup() {
  size(600, 650);
  resetGame();
}

void resetGame() {
  ballX = width / 2.0;
  ballY = 450;

  paddleX = width / 2 - paddleW / 2;

  score = 0;
  lives = 3;

  ballSpeedX = 4;
  ballSpeedY = -4;

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      bricks[i][j] = true;
    }
  }

  gameStarted = false;
  gameOver = false;
  gameClear = false;
}

void draw() {
  background(15, 20, 40);

  drawBricks();
  drawPaddle();
  drawBall();
  drawInfo();

  if (gameOver || gameClear) {
    drawResult();
    return;
  }

  if (gameStarted) {
    moveBall();
  } else {
    ballX = paddleX + paddleW / 2.0;
    ballY = paddleY - 15;
  }

  movePaddle();
}

void drawBricks() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      if (bricks[i][j]) {
        fill(255 - j * 25, 80 + j * 25, 120 + i * 8);
        stroke(255);
        rect(i * 59 + 5, j * 30 + 50, 54, 23, 5);
      }
    }
  }
}

void drawPaddle() {
  noStroke();
  fill(0, 220, 255);
  rect(paddleX, paddleY, paddleW, paddleH, 8);
}

void drawBall() {
  noStroke();
  fill(255, 240, 100);
  ellipse(ballX, ballY, 18, 18);
}

void movePaddle() {
  if (keyPressed) {
    if (keyCode == LEFT) {
      paddleX -= 7;
    }

    if (keyCode == RIGHT) {
      paddleX += 7;
    }
  }

  paddleX = constrain(paddleX, 0, width - paddleW);
}

void moveBall() {
  ballX += ballSpeedX;
  ballY += ballSpeedY;

  // 좌우 벽 충돌
  if (ballX < 9 || ballX > width - 9) {
    ballSpeedX *= -1;
  }

  // 천장 충돌
  if (ballY < 9) {
    ballSpeedY *= -1;
  }

  // 패들과 충돌
  if (ballY + 9 >= paddleY &&
      ballY <= paddleY + paddleH &&
      ballX >= paddleX &&
      ballX <= paddleX + paddleW &&
      ballSpeedY > 0) {

    ballSpeedY = -abs(ballSpeedY);

    float hit = (ballX - (paddleX + paddleW / 2.0))
                / (paddleW / 2.0);

    ballSpeedX = hit * 6;
  }

  // 블록 충돌
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      if (bricks[i][j]) {

        int bx = i * 59 + 5;
        int by = j * 30 + 50;

        if (ballX + 9 > bx &&
            ballX - 9 < bx + 54 &&
            ballY + 9 > by &&
            ballY - 9 < by + 23) {

          bricks[i][j] = false;
          ballSpeedY *= -1;
          score += 10;
        }
      }
    }
  }

  // 남은 블록 확인
  int remaining = 0;

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      if (bricks[i][j]) {
        remaining++;
      }
    }
  }

  if (remaining == 0) {
    gameClear = true;
  }

  // 공이 바닥으로 떨어짐
  if (ballY > height) {
    lives--;

    if (lives <= 0) {
      gameOver = true;
    } else {
      gameStarted = false;
      ballSpeedX = 4;
      ballSpeedY = -4;
    }
  }
}

void drawInfo() {
  fill(255);
  textSize(20);
  textAlign(LEFT);

  text("SCORE: " + score, 20, 25);
  text("LIVES: " + lives, 480, 25);

  if (!gameStarted && !gameOver && !gameClear) {
    textAlign(CENTER);
    textSize(18);
    text("SPACE BAR TO START", width / 2, 620);
  }
}

void drawResult() {
  fill(0, 180);
  rect(0, 0, width, height);

  textAlign(CENTER);
  textSize(42);

  if (gameClear) {
    fill(0, 255, 150);
    text("YOU WIN!", width / 2, 300);
  } else {
    fill(255, 80, 80);
    text("GAME OVER", width / 2, 300);
  }

  fill(255);
  textSize(22);
  text("SCORE: " + score, width / 2, 350);
  text("SPACE TO RESTART", width / 2, 410);
}

void keyPressed() {
  if (key == ' ') {
    if (gameOver || gameClear) {
      resetGame();
    } else {
      gameStarted = true;
    }
  }
}
