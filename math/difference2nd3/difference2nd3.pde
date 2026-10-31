// Difference Equation Solver
// y[n] + y[n-2] = 4
// Initial conditions: y[0] = 5, y[1] = 4

int N = 20;
float[] y = new float[N + 1];

void setup() {
  size(900, 600);

  // Initial conditions
  y[0] = 5;
  y[1] = 4;

  // Solve the difference equation
  for (int n = 2; n <= N; n++) {
    y[n] = 4 - y[n-2];
  }

  // Print results in the console
  println("n\t y[n]");
  for (int n = 0; n <= N; n++) {
    println(n + "\t " + y[n]);
  }

  // Plot the results
  plotResults();
}

void draw() {
  // No continuous drawing needed
}

void plotResults() {
  background(255);

  // Graph settings
  float x0 = 80;
  float y0 = 500;
  float graphWidth = 750;
  float graphHeight = 400;

  // Graph title
  fill(0);
  textSize(22);
  textAlign(CENTER);
  text("Difference Equation: y[n] + y[n-2] = 4",
       width/2, 35);

  // Coordinate axes
  stroke(0);
  strokeWeight(2);
  line(x0, y0 - graphHeight, x0, y0);
  line(x0, y0, x0 + graphWidth, y0);

  // Axis labels
  textSize(15);
  text("n", x0 + graphWidth + 20, y0 + 5);
  text("y[n]", x0 - 30, y0 - graphHeight - 10);

  // Plot horizontal grid lines and y-axis labels
  textSize(12);
  strokeWeight(1);

  for (int v = -2; v <= 6; v++) {
    float py = map(v, -2, 6,
                   y0, y0 - graphHeight);

    stroke(220);
    line(x0, py, x0 + graphWidth, py);

    fill(0);
    textAlign(RIGHT);
    text(v, x0 - 10, py + 5);
  }

  // Plot vertical grid lines and x-axis labels
  for (int n = 0; n <= N; n += 2) {
    float px = map(n, 0, N, x0,
                   x0 + graphWidth);

    stroke(230);
    line(px, y0 - graphHeight, px, y0);

    fill(0);
    textAlign(CENTER);
    text(n, px, y0 + 20);
  }

  // Plot data points and connecting lines
  stroke(0, 100, 220);
  strokeWeight(2);

  for (int n = 0; n < N; n++) {
    float x1 = map(n, 0, N, x0,
                   x0 + graphWidth);
    float x2 = map(n+1, 0, N, x0,
                   x0 + graphWidth);

    float y1 = map(y[n], -2, 6,
                   y0, y0 - graphHeight);
    float y2 = map(y[n+1], -2, 6,
                   y0, y0 - graphHeight);

    line(x1, y1, x2, y2);
  }

  // Draw data points
  for (int n = 0; n <= N; n++) {
    float px = map(n, 0, N, x0,
                   x0 + graphWidth);
    float py = map(y[n], -2, 6,
                   y0, y0 - graphHeight);

    fill(220, 50, 50);
    stroke(0);
    ellipse(px, py, 10, 10);

    // Display numerical values
    fill(0);
    textSize(11);
    textAlign(CENTER);
    text(y[n], px, py - 12);
  }

  // Legend
  fill(220, 50, 50);
  ellipse(650, 75, 10, 10);
  fill(0);
  textAlign(LEFT);
  textSize(13);
  text("y[n]", 665, 80);
}
