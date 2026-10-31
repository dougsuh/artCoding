
int N = 20;
float[] y = new float[N + 1];

void setup() {
  size(900, 600);

  // Calculate y[n] from n = 0 to 20
  for (int n = 0; n <= N; n++) {
    y[n] = 3 * cos(PI/2 * n)
         + 2 * sin(PI/2 * n) + 2;
  }

  // Print numerical results
  println("n\t y[n]");
  for (int n = 0; n <= N; n++) {
    println(n + "\t " + y[n]);
  }

  // Plot the results
  plotResults();
}

void draw() {
  // No continuous drawing required
}

// Function to plot y[n]
void plotResults() {
  background(255);

  // Graph dimensions
  float x0 = 80;
  float y0 = 480;
  float graphWidth = 750;
  float graphHeight = 400;

  // Graph title
  fill(0);
  textSize(20);
  textAlign(CENTER);
  text("y[n] = 3cos(PI*n/2) + 2sin(PI*n/2) + 2",
       width/2, 35);

  // Coordinate axes
  stroke(0);
  strokeWeight(2);
  line(x0, y0 - graphHeight, x0, y0);
  line(x0, y0, x0 + graphWidth, y0);

  // Axis labels
  fill(0);
  textSize(14);
  textAlign(CENTER);
  text("n", x0 + graphWidth + 20, y0 + 5);
  text("y[n]", x0 - 35, y0 - graphHeight - 10);

  // Horizontal grid lines and y-axis labels
  for (int v = -2; v <= 6; v++) {
    float py = map(v, -2, 6,
                   y0, y0 - graphHeight);

    stroke(220);
    strokeWeight(1);
    line(x0, py, x0 + graphWidth, py);

    fill(0);
    textAlign(RIGHT);
    text(v, x0 - 10, py + 5);
  }

  // Vertical grid lines and x-axis labels
  for (int n = 0; n <= N; n += 2) {
    float px = map(n, 0, N, x0,
                   x0 + graphWidth);

    stroke(230);
    line(px, y0 - graphHeight, px, y0);

    fill(0);
    textAlign(CENTER);
    text(n, px, y0 + 20);
  }

  // Draw connecting lines
  stroke(0, 100, 220);
  strokeWeight(2);

  for (int n = 0; n < N; n++) {
    float x1 = map(n, 0, N, x0,
                   x0 + graphWidth);
    float x2 = map(n+1, 0, N, x0,
                   x0 + graphWidth);

    float py1 = map(y[n], -2, 6,
                    y0, y0 - graphHeight);
    float py2 = map(y[n+1], -2, 6,
                    y0, y0 - graphHeight);

    line(x1, py1, x2, py2);
  }

  // Draw data points and numerical values
  for (int n = 0; n <= N; n++) {
    float px = map(n, 0, N, x0,
                   x0 + graphWidth);
    float py = map(y[n], -2, 6,
                   y0, y0 - graphHeight);

    // Data point
    fill(220, 50, 50);
    stroke(0);
    ellipse(px, py, 10, 10);

    // Numerical value
    fill(0);
    textSize(11);
    textAlign(CENTER);
    text(nf(y[n], 1, 1), px, py - 12);
  }

  // Legend
  fill(220, 50, 50);
  noStroke();
  ellipse(650, 75, 10, 10);

  fill(0);
  textSize(13);
  textAlign(LEFT);
  text("y[n]", 665, 80);
}
