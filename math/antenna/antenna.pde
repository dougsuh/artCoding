/***************************************************************************
* DESCRIPTION:
* Wave equation in cylindrical coordinate
* 
* AUTHOR: Doug Young Suh
* LAST REVISED:  July 8, 2026
***************************************************************************/
Antenna s1;
void setup() {
  size(800,600);
  s1 = new Antenna(1e6,200);
  frameRate(5);
}
void draw(){
  background(255);
  s1.update();
}
