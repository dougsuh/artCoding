class all {
  all() {
    x = random(width);
    y = random(height);
    d= random(20,30);
    vx =random(3, 7); // suh
    vy =random(3, 7); // suh
  }
  all(float a, float b, float c) {
    x=a;
    y=b;
    d=c;
    vx =random(2, 4);// suh
    vy =random(2, 4);// suh
  }
  float x, y, d, vx, vy;
  void chase(kimchar aa){
    float dx,dy,dis;
    // calculate distance from a[3]
    dx = x-aa.x;
    dy = y-aa.y;
    dis = sqrt(dx*dx+dy*dy); // Pythagolas law
    // if very close, then stop this object
    if(dis < (d+aa.d)/2){// collision occurs.
       aa.x = aa.y = 100;
    }    
  }
  void ppap() {
    x += vx;
    y += vy;
    if (x>width-0 || x<0) {
      vx = -vx;
    }
    if (y>height-0|| y<3) {
      vy = -vy;
    }
  }
  void bear() {
    //left ear
    fill(#5A5A5A);
    circle(x+d*0.3, y-d*2, d*0.7);
    fill(0);
    circle(x+d*0.3, y-d*2, d*0.4);

    //right ear
    fill(#5A5A5A);
    circle(x+d*1.7, y-d*2, d*0.7);
    fill(0);
    circle(x+d*1.7, y-d*2, d*0.4);

    //left hand
    fill(#5A5A5A);
    ellipse(x+d*0.25, y-d*0.25, d*0.7, d);

    //right hand
    fill(#5A5A5A);
    ellipse(x+d*1.75, y-d*0.25, d*0.7, d);

    //body
    fill(#5A5A5A);
    ellipse(x+d, y-d*0.2, d*1.8, d*1.75);
    fill(#FFFFFF);
    circle(x+d, y-d*0.2, d);

    //head
    fill(#5A5A5A);
    ellipse(x+d, y-d*1.3, d*1.9, d*1.8);

    //left leg
    fill(#5A5A5A);
    ellipse(x+d*0.6, y+d*0.35, d*0.6, d*0.7);
    fill(0);
    ellipse(x+d*0.6, y+d*0.45, d*0.3, d*0.4);
    circle(x+d*0.45, y+d*0.2, d*0.1);
    circle(x+d*0.6, y+d*0.1, d*0.1);
    circle(x+d*0.75, y+d*0.2, d*0.1);

    //right leg
    fill(#5A5A5A);
    ellipse(x+d*1.4, y+d*0.35, d*0.6, d*0.7);
    fill(0);
    ellipse(x+d*1.4, y+d*0.45, d*0.3, d*0.4);
    circle(x+d*1.25, y+d*0.2, d*0.1);
    circle(x+d*1.4, y+d*0.1, d*0.1);
    circle(x+d*1.55, y+d*0.2, d*0.1);

    //left eye
    strokeWeight(2);
    stroke(0);
    noFill();
    beginShape();
    vertex(x+d*0.5, y-d*1.5);
    vertex(x+d*0.8, y-d*1.6);
    vertex(x+d*0.5, y-d*1.8);
    endShape();

    //right eye
    fill(#FFFFFF);
    circle(x+d*1.35, y-d*1.65, d*0.4);
    fill(0);
    circle(x+d*1.35, y-d*1.65, d*random(0.1, 0.3));
    fill(#FFFFFF);
    circle(x+d*1.25, y-d*1.7, d*0.05);
    circle(x+d*1.3, y-d*1.61, d*0.05);
    circle(x+d*1.35, y-d*1.67, d*0.05);

    //nose
    fill(0);
    ellipse(x+d, y-d*1.3, d*0.15, d*0.1);

    //mouth
    fill(#222222);
    arc(x+d, y-d, d*0.65, d*0.4, 0, PI);
    noStroke();
    fill(#7C0A02);
    arc(x+d, y-d*0.95, d*0.3, d*random(0.3, 0.7), 0, PI);

    //face
    fill(#B22222);
    ellipse(x+d*0.35, y-d*1.2, d*0.2, d*0.35);
    ellipse(x+d*1.65, y-d*1.2, d*0.2, d*0.35);
  }
}
