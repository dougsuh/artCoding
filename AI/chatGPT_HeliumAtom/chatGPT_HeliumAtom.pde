float angle1 = 0; // Angle for the first electron
float angle2 = PI; // Angle for the second electron (opposite phase)
float orbitRadius = 150; // Radius of the electron orbit
float angularSpeed = 0.02; // Speed of the electron movement

PVector nucleus; // Position of the nucleus

void setup() {
  size(800, 800, P3D); // 3D canvas
  nucleus = new PVector(0, 0, 0); // Nucleus at the origin
}

void draw() {
  background(0);
  lights();
  translate(width / 2, height / 2); // Center the 3D space
  
  // Draw the nucleus (protons and neutrons)
  drawNucleus();
  
  // Update and draw the electrons
  drawElectrons();
}

void drawNucleus() {
  pushMatrix();
  translate(nucleus.x, nucleus.y, nucleus.z);
  
  // Proton 1
  pushMatrix();
  translate(-10, -10, 0);
  noStroke();
  fill(255, 0, 0);
  sphere(15); // Red sphere for proton
  popMatrix();
  
  // Proton 2
  pushMatrix();
  translate(10, 10, 0);
  noStroke();
  fill(255, 0, 0);
  sphere(15); // Red sphere for proton
  popMatrix();
  
  // Neutron 1
  pushMatrix();
  translate(-10, 10, 0);
  noStroke();
  fill(200);
  sphere(15); // Gray sphere for neutron
  popMatrix();
  
  // Neutron 2
  pushMatrix();
  translate(10, -10, 0);
  noStroke();
  fill(200);
  sphere(15); // Gray sphere for neutron
  popMatrix();
  
  popMatrix();
}

void drawElectrons() {
  // Electron 1
  float x1 = orbitRadius * cos(angle1);
  float y1 = orbitRadius * sin(angle1);
  float z1 = orbitRadius * sin(angle1 / 2); // Add some 3D depth
  
  pushMatrix();
  translate(x1, y1, z1);
  noStroke();
  fill(0, 0, 255);
  sphere(10); // Blue sphere for electron
  popMatrix();
  
  // Electron 2 (opposite phase)
  float x2 = orbitRadius * cos(angle2);
  float y2 = orbitRadius * sin(angle2);
  float z2 = orbitRadius * sin(angle2 / 2);
  
  pushMatrix();
  translate(x2, y2, z2);
  noStroke();
  fill(0, 0, 255);
  sphere(10); // Blue sphere for electron
  popMatrix();
  
  // Update angles to move electrons
  angle1 += angularSpeed;
  angle2 += angularSpeed;
}
