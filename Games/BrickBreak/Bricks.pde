class Bricks{
  Bricks(float xx,float ww, float hh){
    x = xx; // left-upper corner
    W = ww;
    H = hh;
    Layers = 5;
  }
  float x,W,H;
  int Layers;
  void show(){    
    for(int i=0;i<Layers;i++){
      if(i==0) fill(0,0,255);
      else if(i==1) fill(0,255,0);
      else if(i==2) fill(255,255,0);
      else if(i==3) fill(255,0,255);
      else fill(255,0,0);
      rect(x,i*H,W,H);
    }
  }  
}
