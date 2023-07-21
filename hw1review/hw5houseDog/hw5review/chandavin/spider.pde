void spider(float x, float y, float d)
{
  // Draw Spiderman's head
  fill(255, 0, 0); // Set the fill color to red
  ellipse(x, y, 10*d, 10*d); // Draw a red circle for the head

  // Draw Spiderman's eyes
  fill(255); // Set the fill color to white
  ellipse(x - 2*d, y - d, 2*d, 2*d); // Draw the left eye
  ellipse(x + 2*d, y - d, 2*d, 2*d); // Draw the right eye

  // Draw Spiderman's web
  stroke(0); // Set the stroke color to black
  strokeWeight(2); // Set the stroke weight to 2 pixels
  line(x - 5*d, y, x + 5*d, y); // Draw the horizontal line of the web
  line(x, y - 5*d, x, y + 5*d); // Draw the vertical line of the web

  // Draw Spiderman's body
  fill(0, 0, 255); // Set the fill color to blue
  rect(x - 5*d, y + 5*d, 10*d, 10*d, d); // Draw a blue rectangle for the body
}
