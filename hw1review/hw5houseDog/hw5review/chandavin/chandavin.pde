float x,y;
float a,b;
void setup() {
  size (500, 500);
  x = 100;
  y = 200;
  a = b = 300;
}
void draw(){
  background(255,255,0);
  doraemon(x,y,5);
  spider(a,b,5);
  x = mouseX;
  y = mouseY;
  if(keyPressed){
    if(key == 'd') a += 5; // right
    else if(key == 'a') a -= 5; // to left
    else if(key == 'w') b -= 5; // to up
    else if(key == 's') b += 5; // down
  }
}
