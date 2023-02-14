class Ball{
  Ball(){
    x = random(width);
    y = random(height/2-100,height/2+100);
    sx = 5;
    sy = -5;
    d = 50;
  }
  float x,y,sx,sy,d;
  void move(){
    x += sx;
    y += sy;
    if(x < 0 || x > width) sx = -sx;
    if(y < 0) sy = -sy;
  }
  void show(){
    fill(255,0,0);
    circle(x,y,d);
  }
  boolean checkBricks(Bricks bb){
    if(y > bb.Layers * bb.H) return false;
    if(x>bb.x && x<bb.x+bb.W){
      bb.Layers--;
      sy = -sy;
    }
    return false;
  }  
  boolean checkBat(Bat bb){
    if(y < bb.y-bb.H) return false;
    if(x>bb.x-bb.W/2 && x<bb.x+bb.W/2){
      sy = -sy;
    }
    return false;
  }
}  
