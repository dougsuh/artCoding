//kem
void kem(float e, float f, float d) {
  fill(0);
  circle(e + 50, f - 130, d+10);
  circle(e + 100, f - 130, d+10);

  fill(255);
  circle(e + 75, f - 100, d + 50);

  fill(0);
  circle(e + 50, f - 110, d-2 );
  circle(e + 100, f - 110, d-2 );

  fill(255);
  circle(e + 50, f - 110, d - 35);
  circle(e + 100, f - 110, d - 35);
  fill(0);
  circle(e + 75, f - 80, d - 30);
}
