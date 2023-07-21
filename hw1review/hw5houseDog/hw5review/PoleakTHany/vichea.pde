void thany (float x1, float y1, float d1){
     
     noStroke();
     //head
     circle(x1-10*d1,y1+2*d1,d1*4);      //circle(100,120,40); 
     //body
     rect(x1-10.5*d1,y1,d1*1,d1*10,d1*2);  //rect(95,100,10,100,20);
     //hand
     rect(x1-14*d1,y1+4*d1,d1*8,d1*1,d1*2);   //rect(60,140,80,10,20); 
     //feet
     rect(x1-11*d1,y1+9*d1,d1*2,d1*1,d1*2);   //rect(90,190,20,10,20);
     rect(x1-11.5*d1,y1+9*d1,d1*1,d1*4,d1*2);   //rect(85,190,10,40,20); 
     rect(x1-9.5*d1,y1+9*d1,d1*1,d1*4,d1*2);  //rect(105,190,10,40,20); 

}
