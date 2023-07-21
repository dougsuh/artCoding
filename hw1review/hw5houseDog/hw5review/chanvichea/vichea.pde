void vichea1(float x, float y,float d)
  {
    smooth();
strokeWeight(3);
  fill(#674A33);
  rect(x+10*d,y+12*d,d*69,d*10);  //rect(250,160,340,50);
  rect(x+26*d,y+28*d,d*36,d*10); //rect(330,240,180,50);
  rect(x+26*d,y+40*d,d*36,d*10); //rect(330,300,180,50);
  rect(x+26*d,y+52*d,d*36,d*10); //rect(330,360,180,50);
  rect(x+40*d,y+12*d,d*10,d*60);  //rect(400,160,50,300); //body
 square(x+30*d,y-11*d,d*30); //square(350,50,150);
square(x+1*d,y,d*20); //square(200,100,100);
square(x+70*d,y+1*d,d*20); //head //square(550,100,100); //head
 fill(#FFFFFF);
 square(x+48*d,y-4*d,d*6); // square(380,80,30);
 square(x+35*d,y-4*d,d*6); // square(440,80,30); 
 square(x+4*d,y+4*d,d*4); // square(220,120,20);
 square(x+12*d,y+4*d,d*4); //square(260,120,20);
 square(x+74*d,y+4*d,d*4); //square(570,120,20);
 fill(#F5F5F5);
 square(x+82*d,y+4*d,d*4); //eye // square(610,120,20); //eye
 rect(x+39*d,y+9*d,d*12,d*4); // rect(395,140,60,20);
 rect(x+5*d,y+12*d,d*10,d*4); // rect(225,160,50,20);
 rect(x+75*d,y+12*d,d*10,d*4);  //rect(575,160,50,20);
 }
