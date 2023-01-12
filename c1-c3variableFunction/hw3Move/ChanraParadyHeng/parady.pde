//member 2 : titanic ship
void ship(float x, float y){
  fill(255,0,0);
  quad (x-220,y-150, x-210,y-130, x-90,y-130, x-80,y-150);
  quad (x-210,y-130, x-200,y-120, x-90,y-120, x-90,y-130);
  fill(255,255,255);
  quad (x-200,y-170, x-200,y-150, x-100,y-150, x-100,y-170);
  quad (x-150,y-180, x-150,y-170, x-130,y-170, x-130,y-180);
  quad (x-180,y-180, x-180,y-170, x-160,y-170, x-160,y-180);
  quad (x-180,y-180, x-180,y-190, x-160,y-190, x-160,y-180);
  fill(0,191,255);
  circle (x-200,y-140,5);
  circle (x-190,y-140,5);
  circle (x-180,y-140,5);
}
