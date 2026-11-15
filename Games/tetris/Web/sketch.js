// p5.js Tetris Game with Touchscreen & Keyboard Controls

const COLS = 10;
const ROWS = 20;
const CELL_SIZE = 30;
const BOARD_WIDTH = COLS * CELL_SIZE;   // 300px
const BOARD_HEIGHT = ROWS * CELL_SIZE;  // 600px
const SIDEBAR_WIDTH = 180;
const TOUCHPAD_HEIGHT = 160;

let grid = [];

// 7가지 테트로미노 형태 정의 (I, O, T, S, Z, J, L)
const shapes = [
  [ [0, 0, 0, 0], [1, 1, 1, 1], [0, 0, 0, 0], [0, 0, 0, 0] ], // I
  [ [2, 2], [2, 2] ],                                         // O
  [ [0, 3, 0], [3, 3, 3], [0, 0, 0] ],                        // T
  [ [0, 4, 4], [4, 4, 0], [0, 0, 0] ],                        // S
  [ [5, 5, 0], [0, 5, 5], [0, 0, 0] ],                        // Z
  [ [6, 0, 0], [6, 6, 6], [0, 0, 0] ],                        // J
  [ [0, 0, 7], [7, 7, 7], [0, 0, 0] ]                         // L
];

let blockColors = [];

let currentShape;
let currentType;
let nextType;
let curX, curY;

let score = 0;
let lines = 0;
let level = 1;

let lastDropTime = 0;
let dropInterval = 800;
let gameOver = false;

let btnLeft, btnDown, btnRight, btnDrop, btnRotCCW, btnRotCW, btnRestart;
let lastTouchHoldTime = 0;
const touchHoldDelay = 130; // 버튼을 누르고 있을 때 연속 이동 간격(ms)
let lastTapTime = 0;        // 터치 및 마우스 중복 입력 방지용 타이머

// 터치 버튼 클래스
class TouchButton {
  constructor(x, y, w, h, label) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.label = label;
  }

  isInside(px, py) {
    return px >= this.x && px <= this.x + this.w && py >= this.y && py <= this.y + this.h;
  }

  isPressed() {
    if (!isPointerDown()) return false;
    return this.isInside(getPointerX(), getPointerY());
  }
}

function setup() {
  const canvas = createCanvas(480, 760);
  canvas.parent('game-container');
  textAlign(LEFT, TOP);

  // 블록 색상 초기화 (인덱스 1~7 사용)
  blockColors = [
    color(0),               // 0: 빈 공간
    color(0, 240, 240),     // 1: I (하늘색)
    color(240, 240, 0),     // 2: O (노란색)
    color(160, 0, 240),     // 3: T (보라색)
    color(0, 240, 0),       // 4: S (초록색)
    color(240, 0, 0),       // 5: Z (빨간색)
    color(0, 80, 240),      // 6: J (파란색)
    color(240, 160, 0)      // 7: L (주황색)
  ];

  // 하단 터치 버튼 배치
  btnLeft    = new TouchButton(15,  615, 70,  60, "LEFT");
  btnDown    = new TouchButton(95,  615, 70,  60, "DOWN");
  btnRight   = new TouchButton(175, 615, 70,  60, "RIGHT");
  btnDrop    = new TouchButton(15,  685, 230, 58, "HARD DROP");
  btnRotCCW  = new TouchButton(260, 615, 98,  128, "ROT L");
  btnRotCW   = new TouchButton(368, 615, 98,  128, "ROT R");
  btnRestart = new TouchButton(320, 535, 130, 42, "RESTART");

  resetGame();
}

function draw() {
  background(25, 25, 35);

  if (!gameOver) {
    // 자동 낙하 처리
    if (millis() - lastDropTime > dropInterval) {
      moveDown();
      lastDropTime = millis();
    }

    // 터치/마우스 버튼을 길게 누르고 있을 때 연속 이동 (좌/우/아래)
    if (isPointerDown() && millis() - lastTouchHoldTime > touchHoldDelay) {
      const px = getPointerX();
      const py = getPointerY();

      if (btnLeft.isInside(px, py)) {
        if (isValidPosition(currentShape, curX - 1, curY)) curX--;
        lastTouchHoldTime = millis();
      } else if (btnRight.isInside(px, py)) {
        if (isValidPosition(currentShape, curX + 1, curY)) curX++;
        lastTouchHoldTime = millis();
      } else if (btnDown.isInside(px, py)) {
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

// 현재 터치 또는 마우스 클릭 상태 확인
function isPointerDown() {
  return mouseIsPressed || touches.length > 0;
}

function getPointerX() {
  return touches.length > 0 ? touches[0].x : mouseX;
}

function getPointerY() {
  return touches.length > 0 ? touches[0].y : mouseY;
}

// 새 블록 생성
function spawnPiece() {
  currentType = nextType;
  nextType = floor(random(7));
  currentShape = copyMatrix(shapes[currentType]);

  curX = Math.floor(COLS / 2) - Math.floor(currentShape[0].length / 2);
  curY = 0;

  if (!isValidPosition(currentShape, curX, curY)) {
    gameOver = true;
  }
}

function copyMatrix(src) {
  return src.map(row => [...row]);
}

function isValidPosition(shape, testX, testY) {
  for (let r = 0; r < shape.length; r++) {
    for (let c = 0; c < shape[r].length; c++) {
      if (shape[r][c] !== 0) {
        const newX = testX + c;
        const newY = testY + r;

        if (newX < 0 || newX >= COLS || newY >= ROWS) {
          return false;
        }
        if (newY >= 0 && grid[newY][newX] !== 0) {
          return false;
        }
      }
    }
  }
  return true;
}

// 블록 회전 (dir: 1 = 시계방향 우회전, -1 = 반시계방향 좌회전)
function rotatePiece(dir) {
  const n = currentShape.length;
  const rotated = Array.from({ length: n }, () => Array(n).fill(0));

  for (let r = 0; r < n; r++) {
    for (let c = 0; c < n; c++) {
      if (dir === 1) {
        rotated[c][n - 1 - r] = currentShape[r][c];
      } else {
        rotated[n - 1 - c][r] = currentShape[r][c];
      }
    }
  }

  // 벽 킥(Wall Kick) 보정
  const kicks = [0, -1, 1, -2, 2];
  for (const dx of kicks) {
    if (isValidPosition(rotated, curX + dx, curY)) {
      currentShape = rotated;
      curX += dx;
      return;
    }
  }
}

function moveDown() {
  if (isValidPosition(currentShape, curX, curY + 1)) {
    curY++;
  } else {
    lockPiece();
    clearLines();
    spawnPiece();
  }
}

function hardDrop() {
  while (isValidPosition(currentShape, curX, curY + 1)) {
    curY++;
    score += 2;
  }
  lockPiece();
  clearLines();
  spawnPiece();
  lastDropTime = millis();
}

function lockPiece() {
  for (let r = 0; r < currentShape.length; r++) {
    for (let c = 0; c < currentShape[r].length; c++) {
      if (currentShape[r][c] !== 0) {
        if (curY + r >= 0) {
          grid[curY + r][curX + c] = currentShape[r][c];
        }
      }
    }
  }
}

function clearLines() {
  let cleared = 0;
  for (let r = ROWS - 1; r >= 0; r--) {
    let full = true;
    for (let c = 0; c < COLS; c++) {
      if (grid[r][c] === 0) {
        full = false;
        break;
      }
    }

    if (full) {
      cleared++;
      for (let row = r; row > 0; row--) {
        grid[row] = [...grid[row - 1]];
      }
      grid[0] = Array(COLS).fill(0);
      r++;
    }
  }

  if (cleared > 0) {
    const lineScores = [0, 100, 300, 500, 800];
    score += lineScores[cleared] * level;
    lines += cleared;
    level = 1 + Math.floor(lines / 10);
    dropInterval = max(100, 800 - (level - 1) * 65);
  }
}

function drawBoard() {
  for (let r = 0; r < ROWS; r++) {
    for (let c = 0; c < COLS; c++) {
      if (grid[r][c] === 0) {
        fill(18, 18, 26);
        stroke(40, 40, 55);
        rect(c * CELL_SIZE, r * CELL_SIZE, CELL_SIZE, CELL_SIZE);
      } else {
        drawBlock(c * CELL_SIZE, r * CELL_SIZE, blockColors[grid[r][c]], 255);
      }
    }
  }
}

function drawGhostPiece() {
  let ghostY = curY;
  while (isValidPosition(currentShape, curX, ghostY + 1)) {
    ghostY++;
  }

  for (let r = 0; r < currentShape.length; r++) {
    for (let c = 0; c < currentShape[r].length; c++) {
      if (currentShape[r][c] !== 0) {
        const x = (curX + c) * CELL_SIZE;
        const y = (ghostY + r) * CELL_SIZE;
        drawBlock(x, y, blockColors[currentShape[r][c]], 65);
      }
    }
  }
}

function drawCurrentPiece() {
  for (let r = 0; r < currentShape.length; r++) {
    for (let c = 0; c < currentShape[r].length; c++) {
      if (currentShape[r][c] !== 0) {
        const x = (curX + c) * CELL_SIZE;
        const y = (curY + r) * CELL_SIZE;
        drawBlock(x, y, blockColors[currentShape[r][c]], 255);
      }
    }
  }
}

function drawBlock(x, y, col, alphaVal) {
  stroke(15, 15, 20, alphaVal);
  fill(red(col), green(col), blue(col), alphaVal);
  rect(x, y, CELL_SIZE, CELL_SIZE, 4);

  noStroke();
  fill(255, 255, 255, alphaVal * 0.25);
  rect(x + 3, y + 3, CELL_SIZE - 6, 5, 2);
}

function drawSidebar() {
  const startX = BOARD_WIDTH + 20;

  fill(255);
  textSize(24);
  text("TETRIS", startX, 25);

  textSize(14);
  fill(170);
  text("NEXT", startX, 80);

  fill(18, 18, 26);
  stroke(60);
  rect(startX, 105, 130, 100, 6);

  const nextShape = shapes[nextType];
  const offsetX = startX + (130 - nextShape[0].length * 24) / 2.0;
  const offsetY = 105 + (100 - nextShape.length * 24) / 2.0;

  for (let r = 0; r < nextShape.length; r++) {
    for (let c = 0; c < nextShape[r].length; c++) {
      if (nextShape[r][c] !== 0) {
        fill(blockColors[nextShape[r][c]]);
        stroke(20);
        rect(offsetX + c * 24, offsetY + r * 24, 24, 24, 3);
      }
    }
  }

  noStroke();
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

  drawStyledButton(btnRestart, color(65, 65, 85), color(95, 95, 120));
}

function drawTouchControls() {
  noStroke();
  fill(15, 15, 22);
  rect(0, BOARD_HEIGHT, width, TOUCHPAD_HEIGHT);
  stroke(50, 50, 70);
  line(0, BOARD_HEIGHT, width, BOARD_HEIGHT);

  drawStyledButton(btnLeft,   color(45, 55, 75),  color(75, 95, 130));
  drawStyledButton(btnDown,   color(45, 55, 75),  color(75, 95, 130));
  drawStyledButton(btnRight,  color(45, 55, 75),  color(75, 95, 130));
  drawStyledButton(btnDrop,   color(170, 60, 60), color(220, 90, 90));

  drawStyledButton(btnRotCCW, color(55, 90, 140), color(85, 130, 200));
  drawStyledButton(btnRotCW,  color(80, 60, 150), color(120, 95, 210));

  fill(255);
  noStroke();

  // ◀ (좌측 이동 아이콘)
  const lx = btnLeft.x + btnLeft.w / 2;
  const ly = btnLeft.y + btnLeft.h / 2;
  triangle(lx - 12, ly, lx + 8, ly - 12, lx + 8, ly + 12);

  // ▼ (소프트 드롭 아이콘)
  const dx = btnDown.x + btnDown.w / 2;
  const dy = btnDown.y + btnDown.h / 2;
  triangle(dx, dy + 12, dx - 12, dy - 8, dx + 12, dy - 8);

  // ▶ (우측 이동 아이콘)
  const rx = btnRight.x + btnRight.w / 2;
  const ry = btnRight.y + btnRight.h / 2;
  triangle(rx + 12, ry, rx - 8, ry - 12, rx - 8, ry + 12);

  // 좌회전 / 우회전 아이콘
  drawRotationIcon(btnRotCCW.x + btnRotCCW.w / 2, btnRotCCW.y + 48, false);
  drawRotationIcon(btnRotCW.x + btnRotCW.w / 2, btnRotCW.y + 48, true);
}

function drawStyledButton(btn, normalCol, activeCol) {
  stroke(80, 90, 110);
  strokeWeight(1.5);
  fill(btn.isPressed() ? activeCol : normalCol);
  rect(btn.x, btn.y, btn.w, btn.h, 10);
  strokeWeight(1);
  noStroke();

  if (btn.label === "HARD DROP" || btn.label === "RESTART") {
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(15);
    text(btn.label, btn.x + btn.w / 2, btn.y + btn.h / 2);
    textAlign(LEFT, TOP);
  } else if (btn.label === "ROT L" || btn.label === "ROT R") {
    fill(230);
    textAlign(CENTER, CENTER);
    textSize(14);
    text(btn.label, btn.x + btn.w / 2, btn.y + btn.h - 26);
    textAlign(LEFT, TOP);
  }
}

function drawRotationIcon(cx, cy, clockwise) {
  noFill();
  stroke(255);
  strokeWeight(3);
  arc(cx, cy, 34, 34, -PI * 0.75, PI * 0.65);
  strokeWeight(1);

  fill(255);
  noStroke();
  if (clockwise) {
    const ax = cx + 17 * cos(PI * 0.65);
    const ay = cy + 17 * sin(PI * 0.65);
    triangle(ax - 7, ay - 2, ax + 5, ay - 7, ax + 3, ay + 6);
  } else {
    const ax = cx + 17 * cos(-PI * 0.75);
    const ay = cy + 17 * sin(-PI * 0.75);
    triangle(ax - 6, ay + 4, ax + 6, ay + 4, ax - 2, ay - 7);
  }
}

function drawGameOver() {
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

function resetGame() {
  grid = Array.from({ length: ROWS }, () => Array(COLS).fill(0));
  score = 0;
  lines = 0;
  level = 1;
  dropInterval = 800;
  gameOver = false;
  nextType = floor(random(7));
  spawnPiece();
  lastDropTime = millis();
}

// 터치 및 마우스 클릭 통합 처리
function handlePointerPress(px, py) {
  if (millis() - lastTapTime < 40) return;
  lastTapTime = millis();

  if (btnRestart.isInside(px, py)) {
    resetGame();
    return;
  }

  if (gameOver) {
    if (px >= 0 && px <= BOARD_WIDTH && py >= 0 && py <= BOARD_HEIGHT) {
      resetGame();
    }
    return;
  }

  lastTouchHoldTime = millis() + 120;

  if (btnLeft.isInside(px, py)) {
    if (isValidPosition(currentShape, curX - 1, curY)) curX--;
  } else if (btnRight.isInside(px, py)) {
    if (isValidPosition(currentShape, curX + 1, curY)) curX++;
  } else if (btnDown.isInside(px, py)) {
    moveDown();
    score += 1;
    lastDropTime = millis();
  } else if (btnDrop.isInside(px, py)) {
    hardDrop();
  } else if (btnRotCCW.isInside(px, py)) {
    rotatePiece(-1);
  } else if (btnRotCW.isInside(px, py)) {
    rotatePiece(1);
  }
}

function mousePressed() {
  handlePointerPress(mouseX, mouseY);
}

function touchStarted() {
  const px = getPointerX();
  const py = getPointerY();
  handlePointerPress(px, py);

  // 캔버스 내부 터치 시 모바일 브라우저 기본 스크롤/확대 동작 차단
  if (px >= 0 && px <= width && py >= 0 && py <= height) {
    return false;
  }
}

// 키보드 조작 지원
function keyPressed() {
  if (key === 'r' || key === 'R') {
    resetGame();
    return false;
  }

  if (gameOver) return;

  if (keyCode === LEFT_ARROW) {
    if (isValidPosition(currentShape, curX - 1, curY)) curX--;
    return false;
  } else if (keyCode === RIGHT_ARROW) {
    if (isValidPosition(currentShape, curX + 1, curY)) curX++;
    return false;
  } else if (keyCode === DOWN_ARROW) {
    moveDown();
    score += 1;
    lastDropTime = millis();
    return false;
  } else if (keyCode === UP_ARROW || key === 'x' || key === 'X') {
    rotatePiece(1);
    return false;
  } else if (key === 'z' || key === 'Z') {
    rotatePiece(-1);
    return false;
  } else if (key === ' ') {
    hardDrop();
    return false;
  }
}