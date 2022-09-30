void setup(){
  student siha, nouk;  // 2 objects for class student
  siha = new student(); // set default values
  nouk = new student(); // set default values
  print(siha.h + " " + siha.w + " \n"); // print member data
  siha.phen();         // call the member function
  print(siha.r + "\n");
  nouk.w = 90;         // change value of a member data
  nouk.phen();  
  print(nouk.h + " " + nouk.w + " \n");
  print(nouk.r + "\n");
}
