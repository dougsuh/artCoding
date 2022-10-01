// fractal movement
// https://forum.processing.org/two/discussion/26813/interactive-fractal-tree
// modified by Doug Young Suh
// Oct. 28, 2019
//
//  Note: mouse left-button --> move!!!
//
int iterations = 14;
int treeSize = floor(pow(2, iterations)-1);
Branch[] tree = new Branch[treeSize];

float t, t2, colorT;

float angle = 45;
float startangle;
float startererangle = angle;

float wind = 1;
float startwind = wind;
float tempWind;

float r, g, b;
boolean mouseBegin = true;
PVector startMouse;
float tempAngle;

float friction = 0.98; // 0.95 for original
float tension = 0.03;  // 0.1 for original

PGraphics pg;

int noiseSeed1, noiseSeed2, noiseSeed3;

int cursorCount = 0;

void setup () {
  fill(0);
  //size(800, 800, P2D);
  fullScreen(OPENGL);
  pixelDensity(displayDensity());
  smooth(8);
  pg = createGraphics(width, height);

  for (int i=1; i<treeSize; i++) {
    tree[i] = new Branch(new PVector(0, 0), new PVector(0, 0));
  }
  seed();
  plant();

  noiseSeed1 = day() + hour() + minute() + second();
  noiseSeed2 = int(noiseSeed1 * 1.41421356237);
  noiseSeed3 = int(noiseSeed2 * 3.14159265358);
}

void seed() {
  PVector dir = new PVector(0, -300);
  dir.rotate(rad(wind));

  PVector a = new PVector(width/2, height-100) ;
  PVector b = new PVector(width/2+dir.x, height+dir.y-100);
  tree[0] = new Branch(a, b);
}


void plant() {
  seed();

  for (int i=1; i<treeSize; i++) {
    int n = floor((i-1)/2);
    if (i % 2 == 0) {
      tree[n].branch(-1, tree[i]);
    } else {
      tree[n].branch(1, tree[i]);
    }
  }
}

void physics() {
  wind = startwind*(cos(t))*-1;
  startwind *= friction;
  noiseSeed(1337);
  startwind += map(noise(t/51-100), 0, 1, -0.2, 0.2);
  t -= tension;

  angle = startererangle + startangle*(cos(t2));
  startangle *= friction;
  noiseSeed(42);
  startangle += map(noise(t2/50), 0, 1, -0.2, 0.2);
  t2 -= tension;
}

PVector prevMouse, mouse;

void mouse() {
  // Hide / show cursor
  prevMouse = mouse!=null ? mouse : new PVector(mouseX, mouseY);
  mouse = new PVector(mouseX, mouseY);
  cursorCount ++;
  if (mouse.x != prevMouse.x || mousePressed) {
    cursorCount = 0; 
    cursor();
  };
  if (cursorCount > 20) noCursor();

  if (!mousePressed) {
    physics();
    mouseBegin = true;
  } else {
    if (mouseBegin == true) {
      startMouse = new PVector(mouseX, mouseY);
      tempWind = wind;
      tempAngle = angle;
      mouseBegin = false;
    }
    wind = tempWind + map(mouseX-startMouse.x, -width, width, deg(-1), deg(1));
    startwind = abs(wind);
    t = abs((wind/abs(wind)+1)*PI/2);

    angle = abs(tempAngle + map(mouseY-startMouse.y, -height, height, deg(-1), deg(1)))+0.01;
    startangle = startererangle-angle;
    t2 = abs(((angle/abs(angle)+1))*PI/2);
  }
}

void draw() {
  //println(frameRate);
  mouse();
  plant();

  noiseSeed(noiseSeed1);
  float r = map(noise(colorT/50), 0, 1, 0, 255);
  noiseSeed(noiseSeed2);
  float g = map(noise(colorT/75), 0, 1, 0, 255);
  noiseSeed(noiseSeed3);
  float b = map(noise(colorT/100), 0, 1, 0, 255);
  colorT--;


  // Start drawing image
  background(25);

  stroke(r, g, b);
  fill(r, g, b);
  rect(width/2-20, height-100, 40, 20, 3, 3, 40, 40);

  int level = 1;

  for (int i=0; i<treeSize; i++) {
    if ((i % (pow(2, level)-1)) == 0) {
      //if (level > 6) strokeWeight(1);
      strokeWeight((iterations-level)/2);

      noiseSeed(noiseSeed1);
      r = map(noise(colorT/50+level*0.2), 0, 1, 0, 255);
      noiseSeed(noiseSeed2);
      g = map(noise(colorT/75+level*0.2), 0, 1, 0, 255);
      noiseSeed(noiseSeed3);
      b = map(noise(colorT/100+level*0.2), 0, 1, 0, 255);

      stroke(r, g, b);

      level++;
    }
    tree[i].show();
  }
}

public class Branch {
  PVector begin;
  PVector end;
  float rand;
  boolean finished = false;
  float rotation = 0;

  public Branch(PVector begin, PVector end) {
    this.begin = begin;
    this.end = end;
  }

  public void show() {
    line(this.begin.x, this.begin.y, this.end.x, this.end.y);
  }

  public void branch(int direction, Branch targetBranch) {
    PVector dir = new PVector(this.end.x-this.begin.x, this.end.y-this.begin.y);
    dir.rotate(rad(direction*angle+wind));
    dir.mult(0.6667);
    PVector newEnd = new PVector(this.end.x+dir.x, this.end.y+dir.y);
    targetBranch.begin = this.end;
    targetBranch.end = newEnd;
  }
}

static float rad(float deg) {
  return deg*PI/180;
}

static float deg(float rad) {
  return rad*180/PI;
}
