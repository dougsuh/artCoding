void setup () {
  size (400, 500);
  float x, y, d;
  x = 200; y = 100; d = 100;
  //face
  fill (250, 255, 220);
  circle (x, y, d*1.5);
  //eyes
  circle (165, 80, 50);
  circle (230, 80, 50);
  //eyess
  fill(0); // fill (0, 0, 0);
  circle (160, 80, 20);
  fill(0); // fill(0, 0, 0);
  circle (225, 80, 20);
  //ears
  fill(0); // fill(0, 0, 0);
  circle (150, 20, 40);
  circle (245, 17, 40);
  //mouth
  ellipse(200, 150, 40, 50);
  //tongue
  fill(208, 47, 49);
  ellipse(200, 164, 27, 20);
  //Body
  fill(250, 255, 220);
  ellipse (200, 250, 175, 150);
  //Hands
  fill(0); // fill(0, 0, 0);
  circle(130, 190, 50);
  circle(270, 190, 50);
  //legs
  fill(0); // fill(0, 0, 0);
  circle (150, 330, 50);
  circle (240, 335, 50);
}
