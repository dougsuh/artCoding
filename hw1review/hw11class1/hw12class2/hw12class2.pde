vichea [] vv;
void setup() {
  size(600, 400);
  vv = new vichea[3];
  for (int i=0;i<3;i++) {
    vv[i] = new vichea();
    vv[i].chan();
  }
}
