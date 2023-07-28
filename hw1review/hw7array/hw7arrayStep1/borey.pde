void reach(float x, float y, float d) {

   fill(0,191,255);
   circle(x,y,d*25);  // head
   fill(255,255,255);
   circle(x,y+2.5*d,20*d); // head
   fill(255,255,255);
   ellipse(x-4*d,y-5*d,d*0.3*25,d*25*0.5); // right eyes
   fill(255,255,255);
   ellipse(x+4*d,y-5*d,d*25*0.3,d*25*0.5); // left eyes
   fill(255,99,71);
   circle(x,y,d*25*0.2); // nose
   fill(255,255,255);
   circle(x+d,y-d,d*25*0.05); // reflection nose
   fill(0,191,255);
   ellipse(x-2*d,y-5*d,d*2.5,d*25*0.14); // inside left eyes
   fill(0,191,255);
   ellipse(x+2*d,y-5*d,d*2.5,d*25*0.14); // inside right eyes
   fill(255,255,255);
   ellipse(x+2*d,y-5*d,d*25*0.05,d*25*0.07); // reflection right eyes
   fill(255,255,255);
   ellipse(x-2*d,y-5*d,d*25*0.05,d*25*0.07); // reflection left eyes
   arc(x+d*0.1,y+d*6,d*8.5,d*5,0,PI);;  // mouth
}
