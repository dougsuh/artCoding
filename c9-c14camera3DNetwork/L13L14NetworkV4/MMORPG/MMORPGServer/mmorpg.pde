class MMOServer {
  MMOServer(boolean bb) {
    x = random(100, width-100);
    y = random(100, height-100);
    red = bb;
    count = 0;
    players = new player[N];
    for (int i=0; i<N; i++) players[i] = new player(i,red);
  }
  Server ss;
  player [] players;
  float x, y;
  boolean red;
  int count;
  boolean update() {
    if(red) fill(255,0,0); else fill(0,0,255);
    circle(x, y, 100);
    for(int i=0;i<N;i++) players[i].display();
    cc = ss.available();
    if (cc != null) {
      input = cc.readString();
      input = input.substring(0, input.indexOf("\n")); 
      data = int(split(input, ' '));
      println(red+" "+data[0]+" "+data[1]+" "+players[data[0]].state);
      players[data[0]].move(data[1]);
      if(players[data[0]].check(x,y)) count++;
      if(count == N) return true;
    }
    return false;
  }
};
