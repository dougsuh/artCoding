Player p1;

void setup(){
  size(670,400);
  // suh   background(100,255,50);
  
  p1 = new Player(width/2, height/2, 50, 50);
  
}

void draw(){
  
  background(100,255,50);  // suh
  p1.render();
  p1.move();
  
  strokeWeight(2);
  rect(85,100,30,65);      // x,y,w,h body
  
  ellipse(100,100,50,50);  // x,y,w,h head
  ellipse(90,100,10,10);
  ellipse(110,100,10,10);
 ellipse(100,115,10,5);
  line(115,120,130,160);
  line(85,120,70,160);
  line(95,165,84,200);
  line(110,165,100,200);
  ellipse(70,160,15,15);
  ellipse(130,160,15,15);
}

void keyPressed(){
  if (key == 'a'){
    p1.isMovingLeft = true;
  }
  
  if (key == 'd'){
    p1.isMovingRight = true; 
  
  }
}

void keyReleased(){
  if (key == 'a'){
    p1.isMovingLeft = false;
  }
  if (key == 'd'){
    p1.isMovingRight = false; 
  }
}
