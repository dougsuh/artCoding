fish prahoc;
void setup(){
  size(400,400);
  prahoc = new fish();
  // fish's member data&function
  prahoc.gill = 2;
  prahoc.swim();
  // parent's member data&function
  prahoc.hincm = 2;
  prahoc.eat();
}
