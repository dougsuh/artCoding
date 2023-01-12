void panha(float x,float y, float s){
  fill(191,64,191); // new color, good!
  stroke(255); // suh
  strokeWeight(3);
  square(x,y,200*s);  //face
  fill(0);    // suh
  square(x+30*s,y+40*s,30*s); //left eye
  square(x+140*s,y+40*s,30*s); // right eye
  circle(x+105*s,y+150*s,35*s);  //mouth
  fill(191,64,191);
  rect(x,y+200*s,200*s,300*s); //body
  rect(x-200*s,y+200*s,200*s,40*s); //left hand
  rect(x+200*s,y+200*s,200*s,40*s); //right hand
  rect(x,y+500*s,40*s,250*s);//left leg
  rect(x+160*s,y+500*s,40*s,250*s);  //right leg
}
