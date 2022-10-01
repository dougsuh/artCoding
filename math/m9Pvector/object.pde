class CObject{
  CObject(){
    v = new PVector(width/2.0,height/2.0);
    //v = new PVector(0,0);
    OPT = 1;
    init();
  };
  CObject(PVector vv, int option){
    v = vv;
    OPT = option;
    init();
  };
  PVector[] obj;
  PVector v;  // center point
  int OPT,N;  // OPT 1 ellipse OPT 0 rectangular, N = # of vertices
  void init(){
    N = 20;
    float a = 100;
    float b = 60;    
    obj = new PVector[N];
    //translate(width/2.0,height/2.0);
    scale(1,-1);
    int i=0;
    for(float angle=0;angle<360;angle+=360.0/N,i++){
      float th = radians(angle);
      obj[i] = new PVector(a*cos(th),b*sin(th));
      obj[i].add(v); 
    }
  }
  void update(){
    line(obj[N-1].x,newY(N-1),obj[0].x,newY(0));
    for(int i=1;i<N;i++) 
    line(obj[i-1].x,newY(i-1),obj[i].x,newY(i));
  }
  float newY(int n){
    float dist = abs(mouseX-obj[n].x);
    if(dist>30) dist = 0;
    else dist = (30 - dist);
    return obj[n].y+dist;
    /*if(dist>30) dist = 1;
    else dist = (30 - dist)/10.0;
    return obj[n].y*dist;*/
  }
};
