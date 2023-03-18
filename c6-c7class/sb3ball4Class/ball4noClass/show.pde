void display(float x,float y,float D,int op){
  if(op == 0) fill(255,0,0);
  else if(op == 1) fill(0,255,0);
  else if(op == 2) fill(0,0,255);
  else fill(255);
  circle(x,y,D);   circle(x+D,y,D); 
  circle(x,y+D,D);   circle(x+D,y+D,D); 
}
