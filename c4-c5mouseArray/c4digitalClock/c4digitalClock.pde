int sec,min,hr;
void setup(){
  size(400,200);
  textSize(50);
}
void draw(){
  background(0,255,255);
  sec = second();
  min = minute();
  hr = hour();
  text(hr+":"+min+":"+sec,100,100);
}
