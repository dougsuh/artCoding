// Read write a text file with mouse positions to praw points
void setup() {
  size(100, 100);
  parseFile();
}

void parseFile() {
  // Open the file from the createWriter() example
  BufferedReader reader = createReader("positions.txt");
  String line = null;
  try {
    while ((line = reader.readLine()) != null) {
      String[] pieces = split(line, TAB);
      int x = int(pieces[0]);
      int y = int(pieces[1]);
      point(x, y);
    }
    reader.close();
  } catch (IOException e) {
    e.printStackTrace();
  }
} 
/* write a text file with mouse positions
PrintWriter output;
void setup() {
  // Create a new file in the sketch directory
  output = createWriter("positions.txt"); 
}

void draw() {
  point(mouseX, mouseY);
  output.println(mouseX + "\t" + mouseY); // Write the coordinate to the file
}

void keyPressed() {
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
  exit(); // Stops the program
}
*/
