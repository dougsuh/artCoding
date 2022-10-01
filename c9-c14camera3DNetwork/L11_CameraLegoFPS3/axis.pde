// 24 spheres around the center
void axis(){
  float r = 200;  
  for(int i=0;i<360; i+=30){
    float x = i/180.0-1.0;
    fill(x*x*255,0,255*(1-x*x));
    noStroke();
    translate(r*cos(radians(i)),r*sin(radians(i)),0.);
    sphere(20);
    translate(-r*cos(radians(i)),-r*sin(radians(i)),0.);
  }
}
