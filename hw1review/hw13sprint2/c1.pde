class teeth extends potato{
  teeth(){ super(); }
  teeth(float a, float b, float c){
    super(a,b,c);
  }
  void drawTooth(){
    chip();
    fill(255);
    rect(x+0.3*d, y+0.1*d, 0.1*d, 0.1*d); //left tooth
  }
}
