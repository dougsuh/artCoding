void setup(){
  student siha, nouk;  // 2 objects for class student
  siha = new student(); // set default values
  nouk = new student(); // set default values
  println(siha.h + " " + siha.w); // print member data
  siha.phen();         // call the member function
  println(siha.r);
  nouk.w = 90;         // change value of a member data
  nouk.phen();  
  println(nouk.h + " " + nouk.w);
  println(nouk.r);
}
