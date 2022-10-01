void setup(){
  size(300,800);
  float x = 3.5;
  if(2 < x && x < 1000){
    fill(0,255,0);
    square(150,100,50);
  } else {
    fill(255,0,0);
    ellipse(150,100,100,50);
  }
}
    
