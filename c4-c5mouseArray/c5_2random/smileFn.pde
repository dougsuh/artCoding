void smile(float x,float y,float s){
  // FACE
  fill(255,255,0); // yellow
  circle(x-50*s,y-25*s,150*s);
  // eyes
  fill(255);       // white
  circle(x-75*s,y-50*s,50*s);
  square(x-40*s,y-75*s,40*s);
  // mouse
  curve(x-50*s,y-150*s,x-100*s,y,x,y,x-50*s,y-150*s);
  // pupil
  fill(255,0,0);
  circle(x-75*s,y-50*s,10*s);
  circle(x-25*s,y-50*s,10*s);
}
