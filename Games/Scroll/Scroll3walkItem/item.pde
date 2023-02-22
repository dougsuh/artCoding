class Item{
  Item(){
    sr = new srey(0.5);
    Ps = new Piseth(0.5);
    ho = new hong(0.5);
    zo = new panha(0.2);
  }
  srey sr;
  Piseth Ps;
  hong ho;
  panha zo;
  void display(int op, float x, float y){
    if(op == 0) sr.sreyShow(x,y);
    else if(op == 1) Ps.Life(x,y);
    else if(op == 2) ho.fred(x,y);
    else zo.panhaShow(x,y);
  }
}// end of class
