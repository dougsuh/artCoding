// Kwon Joon Yup
void joon(float x,float y, float d){
  // face
  fill(255);
  circle(x,y,20*d);
  // eyes
   fill(0);
   circle(x-5*d,y-4*d,4*d);
   circle(x+5*d,y-4*d,4*d);
   fill(255);
   circle(x-5*d,y-4*d,1*d);
   circle(x+5*d,y-4*d,1*d);
   fill(127,0,255);
   // hair
   ellipse(x,y-14*d,2*d,8*d);
   // mouth
   fill(250,0,0);
   arc(x,y+3*d,8*d,3*d,0,PI);
 }
