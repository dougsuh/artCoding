//member 3 : traffic light
void tlight(float x, float y, float d){
//member 3 : traffic light
  fill(0,0,0);
  rect(x,y-120*d,200*d,300*d,28*d);
  fill(255,0,0);
  circle(x+100*d,y-70*d,80*d);
  fill(255,204,0);
  circle(x+100*d,y+20*d,80*d);
  fill(0,255,0);
  circle(x+100*d,y+110*d,80*d);
}
