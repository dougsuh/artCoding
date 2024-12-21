// Fall 2024, Jaemin Kim, 
// Heejun Yang, Sohee Lim
snowman s1;
santa s2;
boxman s3;
void setup(){
  size(1600,1000,P3D);
  s1 = new snowman(20);
  s2 = new santa(10); 
  s3 = new boxman(10); 
}
void draw(){
  background(135,206,250);
  lights();
  s1.update();
  s1.show();
  s2.update();
  s2.show();
  s3.update();
  s3.show();
}
