class CannonBall{
  CannonBall(){};
  CannonBall(float a,float b,float c, float d){
    x=a; y=b; vx=c; vy=d; rad=20;
    bird = loadImage("bird.png");
    pig = loadImage("pig.png");
  }
  float x,y,vx,vy,rad;
  PImage bird,pig;
  void move(){
  x += vx;
  y += vy;
  vy -= 9.8/100;
  myCircle();
}
void myCircle(){
  image(bird,100,height-100);
  image(pig,width-200,height-150);
  stroke(0,0,0);
  scale(1,-1);
  translate(0,-height);
  circle(x,y,rad*2);
}
};
