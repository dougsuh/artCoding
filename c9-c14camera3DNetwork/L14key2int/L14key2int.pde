// DougFO Play: 
// int number and 'q' --> int 
int number=0,i=0,set = 0;
char data[];
String a;
void setup(){
  data = new char[10];
  size(600,300);
  frameRate(10);
  textSize(150);
}
void draw(){
  background(0,255,255);
  if(set == 1) {
    a = new String(data,0,i); // String(byte[],offset,length)
    //number = Integer.valueOf(a); // It also works.
    number = int(a);
    set = 0;
    i = 0;
  }
  text(number,width/2,height/2);
}
void keyPressed(){
  if(key >= '0' && key <= '9'){
    data[i++] = key;
  }
  else if(key == 'q') { set = 1; }
}
