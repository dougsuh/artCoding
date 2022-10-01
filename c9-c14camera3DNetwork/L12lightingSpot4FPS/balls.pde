void balls(){
  noStroke();
  translate(-360,-50,0);
  for(int i=0;i<10;i++){
      if((i%3) == 0) fill(255,0,0);
      else if ((i%3) == 1) fill(0,255,0);
      else fill(0,0,255);
      sphere(30);
      translate(80,0,0);
  }
  translate(-360,50,0);
}
