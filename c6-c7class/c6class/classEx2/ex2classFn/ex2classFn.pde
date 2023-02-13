Siha a, b, c;
void setup() {
  size(600, 300);
  a = new Siha(100, 100, 100, 1);
  b = new Siha(500, 100, 150, 2);
  a.Life();   b.Life(); 
  a.Pupil();  b.Pupil(); 
}
class Siha {  
  void Pupil(){
    fill(255);
    circle(x-d/5, y-d/6, d/5); // left eye
    fill(0);
    circle(x-d/5, y-d/6, d/10); // pupil    
  }
  Siha(float p, float q, float r, int c) {
    x = p;      y = q;     d = r;
    cc = c;
  }
  float x, y, d;
  int cc; // color of face
  void Life() {
    if(cc == 0) fill(255, 255, 0); // yellow
    else if(cc == 1) fill(255); // white
    else fill(0,255,255); // cyan
    ellipse(x, y, d, d/3*2); // face
    circle(x-d/5, y-d/6, d/5); // left eye
    arc(x+d/5, y-d/6, d/5, d/5, PI, 2*PI); // right eye
    arc(x, y, d*2/3, d/5, 0, PI); // mouth
  }
}
