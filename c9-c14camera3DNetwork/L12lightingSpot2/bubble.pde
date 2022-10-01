void bu(){
  translate(-400,-100,10);
  fill(0,255,0);
  for(int i=0;i<40;i++){
    if(i==10) fill(255,0,0);
    if(i==20) fill(255);
    for(int j=0;j<10;j++){
      sphere(20);
      translate(0,20,0);
    }
    translate(20,-200,0);
  }
}
