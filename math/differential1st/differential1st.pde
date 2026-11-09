
final float f0 = 2.0;

float dt = 0.1;
float T = 10.0;

ArrayList<PVector> data = new ArrayList<PVector>();

void setup() {
  size(900, 600);

  calculate();
  noLoop();
}

void draw() {
  background(255);
  plotGraph();
}

// ----------------------------------
// Numerical calculation
// ----------------------------------
void calculate() {

  float fn = f0;
  float fn1;

  for (float t = 0; t < T; t += dt) {

    // Store numerical solution
    data.add(new PVector(t, fn));

    // Calculate et
    float et = exp(-sq(t + dt / 2)) / 2.0;

    // Calculate the next value
    fn1 = fn * (1.0 / dt - et) /
               (1.0 / dt + et);

    fn = fn1;
  }
}

// ----------------------------------
// Plot numerical solution
// ----------------------------------
void plotGraph() {

  float left = 100;
  float right = 820;
  float top = 70;
  float bottom = 480;

  // Graph title
  fill(0);
  textAlign(CENTER);
  textSize(22);
  text("Numerical Solution", 450, 35);

  // Grid
  stroke(220);
  strokeWeight(1);

  for (int i = 0; i <= 10; i += 2) {
    float x = map(i, 0, T, left, right);
    line(x, top, x, bottom);
  }

  for (int i = 0; i <= 4; i++) {
    float y = map(i * 0.5, 0, f0, bottom, top);
    line(left, y, right, y);
  }

  // Coordinate axes
  stroke(0);
  strokeWeight(2);

  line(left, top, left, bottom);
  line(left, bottom, right, bottom);

  // X-axis labels
  fill(0);
  textSize(13);
  textAlign(CENTER);

  for (int i = 0; i <= 10; i += 2) {
    float x = map(i, 0, T, left, right);
    text(i, x, bottom + 22);
  }

  // Y-axis labels
  textAlign(RIGHT);

  for (int i = 0; i <= 4; i++) {
    float value = i * 0.5;
    float y = map(value, 0, f0, bottom, top);
    text(nf(value, 1, 1), left - 12, y + 5);
  }

  // Axis titles
  textAlign(CENTER);
  textSize(16);
  text("Time (t)", (left + right) / 2, bottom + 55);

  pushMatrix();
  translate(30, (top + bottom) / 2);
  rotate(-HALF_PI);
  text("f(t)", 0, 0);
  popMatrix();

  // Plot numerical data
  stroke(30, 100, 220);
  strokeWeight(2);
  noFill();

  beginShape();

  for (PVector p : data) {
    float x = map(p.x, 0, T, left, right);
    float y = map(p.y, 0, f0, bottom, top);

    vertex(x, y);
  }

  endShape();

  // Draw numerical data points
  fill(220, 50, 50);
  noStroke();

  for (PVector p : data) {
    float x = map(p.x, 0, T, left, right);
    float y = map(p.y, 0, f0, bottom, top);

    ellipse(x, y, 5, 5);
  }
}
