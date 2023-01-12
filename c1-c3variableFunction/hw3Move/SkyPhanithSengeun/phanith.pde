//ship
void ship(float x, float y, float d) {
  fill(245, 222, 179);
  quad (x-d*1.4, y-d*0.7, x-d*1.2, y-d*0.3, x, y-d*0.3, x+d*0.2, y-d*0.7);
  fill(192, 192, 192);
  quad (x-d*0.9, y-d*1, x-d*0.9, y-d*0.7, x, y-d*0.7, x, y-d*1);
  fill(248, 248, 255);
  quad (x-d*0.8, y-d*1.4, x-d*0.8, y-d*1, x-d*0.5, y-d*1, x-d*0.5, y-d*1.4);
  quad (x-d*0.3, y-d*1.2, x-d*0.3, y-d*1, x-d*0.1, y-d*1, x-d*0.1, y-d*1.2);
  fill(255, 255, 255);
  circle (x-d*0.05, y-d*0.55, d*0.1);
  circle (x-d*0.25, y-d*0.55, d*0.1);
  circle (x-d*0.45, y-d*0.55, d*0.1);
  circle (x-d*0.65, y-d*0.55, d*0.1);
  circle (x-d*0.85, y-d*0.55, d*0.1);
  circle (x-d*1.05, y-d*0.55, d*0.1);
  quad (x-d*0.7, y-d*1.3, x-d*0.7, y-d*1.2, x-d*0.6, y-d*1.2, x-d*0.6, y-d*1.3);
  quad (x-d*0.8, y-d*0.9, x-d*0.8, y-d*0.8, x-d*0.7, y-d*0.8, x-d*0.7, y-d*0.9);
  quad (x-d*0.5, y-d*0.9, x-d*0.5, y-d*0.8, x-d*0.4, y-d*0.8, x-d*0.4, y-d*0.9);
  quad (x-d*0.2, y-d*0.9, x-d*0.2, y-d*0.8, x-d*0.1, y-d*0.8, x-d*0.1, y-d*0.9);
  fill(255, 0, 0);
  line (x-d*0.2, y-d*1.4, x-d*0.2, y-d*1.2);
  triangle (x-d*0.2, y-d*1.4, x-d*0.3, y-d*1.35, x-d*0.2, y-d*1.3);
  line (x-d*1.3, y-d*1.1, x-d*1.3, y-d*0.7);
  triangle (x-d*1.3, y-d*1.1, x-d*1.4, y-d*1.05, x-d*1.3, y-d*1);
}
