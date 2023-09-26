class crown extends potato{
  crown(){ super(); }
  crown(float a, float b, float c){
    super(a,b,c);
  }
  void crowned(){
    chip();
    fill(255,255,0);
    float xx, yy;
    xx = x+0.5*d;
    yy = y-0.3*d;
    beginShape();
    vertex(xx+0.2*d,yy);
    vertex(xx+0.2*d,yy-0.2*d);
    vertex(xx+0.1*d,yy-0.1*d);
    vertex(xx,yy-0.3*d);
    vertex(xx-0.1*d,yy-0.1*d);
    vertex(xx-0.2*d,yy-0.2*d);
    vertex(xx-0.2*d,yy);
    endShape();
  }
}
