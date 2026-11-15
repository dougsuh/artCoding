// Processing 4 Tetris Game with Touchscreen Controls

final int COLS = 10;
final int ROWS = 20;
final int CELL_SIZE = 30;
final int BOARD_WIDTH = COLS * CELL_SIZE;   // 300px
final int BOARD_HEIGHT = ROWS * CELL_SIZE;  // 600px
final int SIDEBAR_WIDTH = 180;
final int TOUCHPAD_HEIGHT = 160;

int[][] grid = new int[ROWS][COLS];

// 7가지 테트로미노 형태 정의 (I, O, T, S, Z, J, L)
int[][][] shapes = {
  { {0, 0, 0, 0}, {1, 1, 1, 1}, {0, 0, 0, 0}, {0, 0, 0, 0} }, // I
  { {2, 2}, {2, 2} },                                         // O
  { {0, 3, 0}, {3, 3, 3}, {0, 0, 0} },                        // T
  { {0, 4, 4}, {4, 4, 0}, {0, 0, 0} },                        // S
  { {5, 5, 0}, {0, 5, 5}, {0, 0, 0} },                        // Z
  { {6, 0, 0}, {6, 6, 6}, {0, 0, 0} },                        // J
  { {0, 0, 7}, {7, 7, 7}, {0, 0, 0} }                         // L
};

// 블록 색상
color[] blockColors = {
  color(0),               // 0: 빈 공간
  color(0, 240, 240),     // 1: I (하늘색)
  color(240, 240, 0),     // 2: O (노란색)
  color(160, 0, 240),     // 3: T (보라색)
  color(0, 240, 0),       // 4: S (초록색)
  color(240, 0, 0),       // 5: Z (빨간색)
  color(0, 80, 240),      // 6: J (파란색)
  color(240, 160, 0)      // 7: L (주황색)
};

int[][] currentShape;
int currentType;
int nextType;
int curX, curY;

int score = 0;
int lines = 0;
int level = 1;

int lastDropTime = 0;
int dropInterval = 800;
boolean gameOver = false;

// 터치 버튼 영역 클래스
class TouchButton {
  float x, y, w, h;
  String label;
  
  TouchButton(float x, float y, float w, float h, String label) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.label = label;
  }
  
  boolean isInside(float px, float py) {
    return px >= x && px <= x + w && py >= y && py <= y + h;
  }
  
  boolean isPressed() {
    return mousePressed && isInside(mouseX, mouseY);
  }
}

TouchButton btnLeft, btnDown, btnRight, btnDrop, btnRotCCW, btnRotCW, btnRestart;
int lastTouchHoldTime = 0;
int touchHoldDelay = 130; // 버튼을 누르고 있을 때 연속 이동 간격(ms)

void setup() {
  size(480, 760); // 보드+사이드바(480x600) + 하단 터치패드(480x160)
  textAlign(LEFT, TOP);
  
  // 하단 터치 버튼 배치
  btnLeft    = new TouchButton(15,  615, 70,  60, "LEFT");
  btnDown    = new TouchButton(95,  615, 70,  60, "DOWN");
  btnRight   = new TouchButton(175, 615, 70,  60, "RIGHT");
  btnDrop    = new TouchButton(15,  685, 230, 58, "HARD DROP");
  btnRotCCW  = new TouchButton(260, 615, 98,  128, "ROT L");
  btnRotCW   = new TouchButton(368, 615, 98,  128, "ROT R");
  btnRestart = new TouchButton(320, 535, 130, 42, "RESTART");
  
  nextType = int(random(7));
  spawnPiece();
  lastDropTime = millis();
}

void draw() {
  background(25, 25, 35);
  
  if (!gameOver) {
    // 자동 낙하 처리
    if (millis() - lastDropTime > dropInterval) {
      moveDown();
      lastDropTime = millis();
    }
    
    // 터치 버튼을 길게 누르고 있을 때 연속 이동 (좌/우/아래)
    if (mousePressed && millis() - lastTouchHoldTime > touchHoldDelay) {
      if (btnLeft.isInside(mouseX, mouseY)) {
        if (isValidPosition(currentShape, curX - 1, curY)) curX--;
        lastTouchHoldTime = millis();
      } else if (btnRight.isInside(mouseX, mouseY)) {
        if (isValidPosition(currentShape, curX + 1, curY)) curX++;
        lastTouchHoldTime = millis();
      } else if (btnDown.isInside(mouseX, mouseY)) {
        moveDown();
        score += 1;
        lastDropTime = millis();
        lastTouchHoldTime = millis();
      }
    }
  }
  
  drawBoard();
  if (!gameOver) {
    drawGhostPiece();
    drawCurrentPiece();
  }
  drawSidebar();
  drawTouchControls();
  
  if (gameOver) {
    drawGameOver();
  }
}

// 새 블록 생성
void spawnPiece() {
  currentType = nextType;
  nextType = int(random(7));
  currentShape = copyMatrix(shapes[currentType]);
  
  curX = COLS / 2 - currentShape[0].length / 2;
  curY = 0;
  
  if (!isValidPosition(currentShape, curX, curY)) {
    gameOver = true;
  }
}

int[][] copyMatrix(int[][] src) {
  int[][] dst = new int[src.length][src[0].length];
  for (int r = 0; r < src.length; r++) {
    arrayCopy(src[r], dst[r]);
  }
  return dst;
}

boolean isValidPosition(int[][] shape, int testX, int testY) {
  for (int r = 0; r < shape.length; r++) {
    for (int c = 0; c < shape[r].length; c++) {
      if (shape[r][c] != 0) {
        int newX = testX + c;
        int newY = testY + r;
        
        if (newX < 0 || newX >= COLS || newY >= ROWS) {
          return false;
        }
        if (newY >= 0 && grid[newY][newX] != 0) {
          return false;
        }
      }
    }
  }
  return true;
}

// 블록 회전 (dir: 1 = 시계방향 우회전, -1 = 반시계방향 좌회전)
void rotatePiece(int dir) {
  int n = currentShape.length;
  int[][] rotated = new int[n][n];
  for (int r = 0; r < n; r++) {
    for (int c = 0; c < n; c++) {
      if (dir == 1) {
        rotated[c][n - 1 - r] = currentShape[r][c];
      } else {
        rotated[n - 1 - c][r] = currentShape[r][c];
      }
    }
  }
  
  // 벽 킥(Wall Kick) 보정
  int[] kicks = {0, -1, 1, -2, 2};
  for (int dx : kicks) {
    if (isValidPosition(rotated, curX + dx, curY)) {
      currentShape = rotated;
      curX += dx;
      return;
    }
  }
}

void moveDown() {
  if (isValidPosition(currentShape, curX, curY + 1)) {
    curY++;
  } else {
    lockPiece();
    clearLines();
    spawnPiece();
  }
}

void hardDrop() {
  while (isValidPosition(currentShape, curX, curY + 1)) {
    curY++;
    score += 2;
  }
  lockPiece();
  clearLines();
  spawnPiece();
  lastDropTime = millis();
}

void lockPiece() {
  for (int r = 0; r < currentShape.length; r++) {
    for (int c = 0; c < currentShape[r].length; c++) {
      if (currentShape[r][c] != 0) {
        if (curY + r >= 0) {
          grid[curY + r][curX + c] = currentShape[r][c];
        }
      }
    }
  }
}

void clearLines() {
  int cleared = 0;
  for (int r = ROWS - 1; r >= 0; r--) {
    boolean full = true;
    for (int c = 0; c < COLS; c++) {
      if (grid[r][c] == 0) {
        full = false;
        break;
      }
    }
    
    if (full) {
      cleared++;
      for (int row = r; row > 0; row--) {
        arrayCopy(grid[row - 1], grid[row]);
      }
      grid[0] = new int[COLS];
      r++;
    }
  }
  
  if (cleared > 0) {
    int[] lineScores = {0, 100, 300, 500, 800};
    score += lineScores[cleared] * level;
    lines += cleared;
    level = 1 + (lines / 10);
    dropInterval = max(100, 800 - (level - 1) * 65);
  }
}

void drawBoard() {
  for (int r = 0; r < ROWS; r++) {
    for (int c = 0; c < COLS; c++) {
      if (grid[r][c] == 0) {
        fill(18, 18, 26);
        stroke(40, 40, 55);
        rect(c * CELL_SIZE, r * CELL_SIZE, CELL_SIZE, CELL_SIZE);
      } else {
        drawBlock(c * CELL_SIZE, r * CELL_SIZE, blockColors[grid[r][c]], 255);
      }
    }
  }
}

void drawGhostPiece() {
  int ghostY = curY;
  while (isValidPosition(currentShape, curX, ghostY + 1)) {
    ghostY++;
  }
  
  for (int r = 0; r < currentShape.length; r++) {
    for (int c = 0; c < currentShape[r].length; c++) {
      if (currentShape[r][c] != 0) {
        int x = (curX + c) * CELL_SIZE;
        int y = (ghostY + r) * CELL_SIZE;
        drawBlock(x, y, blockColors[currentShape[r][c]], 65);
      }
    }
  }
}

void drawCurrentPiece() {
  for (int r = 0; r < currentShape.length; r++) {
    for (int c = 0; c < currentShape[r].length; c++) {
      if (currentShape[r][c] != 0) {
        int x = (curX + c) * CELL_SIZE;
        int y = (curY + r) * CELL_SIZE;
        drawBlock(x, y, blockColors[currentShape[r][c]], 255);
      }
    }
  }
}

void drawBlock(float x, float y, color col, int alphaVal) {
  stroke(15, 15, 20, alphaVal);
  fill(red(col), green(col), blue(col), alphaVal);
  rect(x, y, CELL_SIZE, CELL_SIZE, 4);
  
  noStroke();
  fill(255, 255, 255, alphaVal * 0.25);
  rect(x + 3, y + 3, CELL_SIZE - 6, 5, 2);
}

void drawSidebar() {
  int startX = BOARD_WIDTH + 20;
  
  fill(255);
  textSize(24);
  text("TETRIS", startX, 25);
  
  textSize(14);
  fill(170);
  text("NEXT", startX, 80);
  
  fill(18, 18, 26);
  stroke(60);
  rect(startX, 105, 130, 100, 6);
  
  int[][] nextShape = shapes[nextType];
  float offsetX = startX + (130 - nextShape[0].length * 24) / 2.0;
  float offsetY = 105 + (100 - nextShape.length * 24) / 2.0;
  
  for (int r = 0; r < nextShape.length; r++) {
    for (int c = 0; c < nextShape[r].length; c++) {
      if (nextShape[r][c] != 0) {
        fill(blockColors[nextShape[r][c]]);
        stroke(20);
        rect(offsetX + c * 24, offsetY + r * 24, 24, 24, 3);
      }
    }
  }
  
  fill(170);
  text("SCORE", startX, 235);
  fill(255);
  textSize(20);
  text(score, startX, 258);
  
  textSize(14);
  fill(170);
  text("LINES", startX, 315);
  fill(255);
  textSize(20);
  text(lines, startX, 338);
  
  textSize(14);
  fill(170);
  text("LEVEL", startX, 395);
  fill(255);
  textSize(20);
  text(level, startX, 418);
  
  // 재시작 버튼 그리기
  drawStyledButton(btnRestart, color(65, 65, 85), color(95, 95, 120));
}

// 하단 터치 컨트롤 패드 렌더링
void drawTouchControls() {
  // 컨트롤러 배경 영역
  noStroke();
  fill(15, 15, 22);
  rect(0, BOARD_HEIGHT, width, TOUCHPAD_HEIGHT);
  stroke(50, 50, 70);
  line(0, BOARD_HEIGHT, width, BOARD_HEIGHT);
  
  // 이동 및 드롭 버튼
  drawStyledButton(btnLeft,   color(45, 55, 75),  color(75, 95, 130));
  drawStyledButton(btnDown,   color(45, 55, 75),  color(75, 95, 130));
  drawStyledButton(btnRight,  color(45, 55, 75),  color(75, 95, 130));
  drawStyledButton(btnDrop,   color(170, 60, 60), color(220, 90, 90));
  
  // 좌회전 / 우회전 버튼
  drawStyledButton(btnRotCCW, color(55, 90, 140), color(85, 130, 200));
  drawStyledButton(btnRotCW,  color(80, 60, 150), color(120, 95, 210));
  
  // 버튼 내부 화살표 및 회전 아이콘 그리기
  fill(255);
  noStroke();
  
  // ◀ (좌측 이동 화살표)
  float lx = btnLeft.x + btnLeft.w / 2;
  float ly = btnLeft.y + btnLeft.h / 2;
  triangle(lx - 12, ly, lx + 8, ly - 12, lx + 8, ly + 12);
  
  // ▼ (소프트 드롭 화살표)
  float dx = btnDown.x + btnDown.w / 2;
  float dy = btnDown.y + btnDown.h / 2;
  triangle(dx, dy + 12, dx - 12, dy - 8, dx + 12, dy - 8);
  
  // ▶ (우측 이동 화살표)
  float rx = btnRight.x + btnRight.w / 2;
  float ry = btnRight.y + btnRight.h / 2;
  triangle(rx + 12, ry, rx - 8, ry - 12, rx - 8, ry + 12);
  
  // 좌회전(CCW) 아이콘
  drawRotationIcon(btnRotCCW.x + btnRotCCW.w / 2, btnRotCCW.y + 48, false);
  // 우회전(CW) 아이콘
  drawRotationIcon(btnRotCW.x + btnRotCW.w / 2, btnRotCW.y + 48, true);
}

// 버튼 스타일 및 라벨 그리기
void drawStyledButton(TouchButton btn, color normalCol, color activeCol) {
  stroke(80, 90, 110);
  strokeWeight(1.5);
  fill(btn.isPressed() ? activeCol : normalCol);
  rect(btn.x, btn.y, btn.w, btn.h, 10);
  strokeWeight(1);
  
  if (btn.label.equals("HARD DROP") || btn.label.equals("RESTART")) {
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(15);
    text(btn.label, btn.x + btn.w / 2, btn.y + btn.h / 2);
    textAlign(LEFT, TOP);
  } else if (btn.label.equals("ROT L") || btn.label.equals("ROT R")) {
    fill(230);
    textAlign(CENTER, CENTER);
    textSize(14);
    text(btn.label, btn.x + btn.w / 2, btn.y + btn.h - 26);
    textAlign(LEFT, TOP);
  }
}

// 회전 화살표 벡터 아이콘 그리기
void drawRotationIcon(float cx, float cy, boolean clockwise) {
  noFill();
  stroke(255);
  strokeWeight(3);
  arc(cx, cy, 34, 34, -PI * 0.75, PI * 0.65);
  strokeWeight(1);
  
  fill(255);
  noStroke();
  if (clockwise) {
    // 우회전 화살촉
    float ax = cx + 17 * cos(PI * 0.65);
    float ay = cy + 17 * sin(PI * 0.65);
    triangle(ax - 7, ay - 2, ax + 5, ay - 7, ax + 3, ay + 6);
  } else {
    // 좌회전 화살촉
    float ax = cx + 17 * cos(-PI * 0.75);
    float ay = cy + 17 * sin(-PI * 0.75);
    triangle(ax - 6, ay + 4, ax + 6, ay + 4, ax - 2, ay - 7);
  }
}

void drawGameOver() {
  fill(0, 0, 0, 190);
  noStroke();
  rect(0, 0, BOARD_WIDTH, BOARD_HEIGHT);
  
  textAlign(CENTER, CENTER);
  fill(255, 70, 70);
  textSize(32);
  text("GAME OVER", BOARD_WIDTH / 2, BOARD_HEIGHT / 2 - 20);
  
  fill(255);
  textSize(15);
  text("Tap Screen or 'RESTART'", BOARD_WIDTH / 2, BOARD_HEIGHT / 2 + 25);
  textAlign(LEFT, TOP);
}

void resetGame() {
  grid = new int[ROWS][COLS];
  score = 0;
  lines = 0;
  level = 1;
  dropInterval = 800;
  gameOver = false;
  nextType = int(random(7));
  spawnPiece();
  lastDropTime = millis();
}

// 터치스크린 탭 및 마우스 클릭 처리
void mousePressed() {
  if (btnRestart.isInside(mouseX, mouseY)) {
    resetGame();
    return;
  }
  
  if (gameOver) {
    // 게임 오버 시 보드 화면을 터치해도 즉시 재시작
    if (mouseX <= BOARD_WIDTH && mouseY <= BOARD_HEIGHT) {
      resetGame();
    }
    return;
  }
  
  // 초기 터치 시 즉시 1회 동작 후 홀드 타이머 설정
  lastTouchHoldTime = millis() + 120;
  
  if (btnLeft.isInside(mouseX, mouseY)) {
    if (isValidPosition(currentShape, curX - 1, curY)) curX--;
  } else if (btnRight.isInside(mouseX, mouseY)) {
    if (isValidPosition(currentShape, curX + 1, curY)) curX++;
  } else if (btnDown.isInside(mouseX, mouseY)) {
    moveDown();
    score += 1;
    lastDropTime = millis();
  } else if (btnDrop.isInside(mouseX, mouseY)) {
    hardDrop();
  } else if (btnRotCCW.isInside(mouseX, mouseY)) {
    rotatePiece(-1); // 반시계 방향 좌회전
  } else if (btnRotCW.isInside(mouseX, mouseY)) {
    rotatePiece(1);  // 시계 방향 우회전
  }
}

// 키보드 조작도 동시 지원 (Z: 좌회전, X/위쪽 방향키: 우회전)
void keyPressed() {
  if (key == 'r' || key == 'R') {
    resetGame();
    return;
  }
  
  if (gameOver) return;
  
  if (keyCode == LEFT) {
    if (isValidPosition(currentShape, curX - 1, curY)) curX--;
  } else if (keyCode == RIGHT) {
    if (isValidPosition(currentShape, curX + 1, curY)) curX++;
  } else if (keyCode == DOWN) {
    moveDown();
    score += 1;
    lastDropTime = millis();
  } else if (keyCode == UP || key == 'x' || key == 'X') {
    rotatePiece(1);
  } else if (key == 'z' || key == 'Z') {
    rotatePiece(-1);
  } else if (key == ' ') {
    hardDrop();
  }
}
