void coffee(float x, float y, float d,int oo) {
  fill(0);
  ellipse(x-1.5*d, y+d*2.9, d/2, d); //left leg
  ellipse(x-0.5*d, y+d*2.9, d/2, d); //right leg
  circle(x-0.2*d, y-0.7*d, d-10); //right ear
  circle(x-1.7*d, y-0.7*d, d-10); //left ear
  fill(255);
  ellipse(x-d, y+1.5*d, 1.9*d, 3*d);  //body
  fill(0);
  bezier(x-1.7*d, y+0.3*d, x-2.7*d, y+3*d, x-d, y+3*d, x-1.4*d, y+0.5*d); //left hand
  bezier(x-0.5*d, y+2*d, x-0.5*d, y+2.6*d, x+d, y+2.6*d, x-0.6*d, y-0.2*d); //right hand
  if(oo == 0) fill(255); else fill(255,200, 250);//suh
  circle(x-d, y, 1.5*d);  //face
  fill(156);
  circle(x-1.3*d, y-10, 0.4*d); //left eye
  circle(x-0.6*d, y-10, 0.4*d); //right eye
  fill(0);
  ellipse(x-d, y+0.2*d, 0.3*d, 0.2*d); //nose
  stroke(0);
  circle(x-1.2*d, y-5, 0.1*d); //button left eye
  circle(x-0.7*d, y-5, 0.1*d); //button right eye
  noFill();
  arc(x-d, y+0.35*d, 0.3*d, 0.3*d, 0, PI); //mouse
}
