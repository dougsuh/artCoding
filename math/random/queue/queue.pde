import java.util.LinkedList;
LinkedList<Integer> queue = new LinkedList<Integer>();
double lambda = 0.59, mu = 0.6;   // arrival rate / service rate
int customerID = 0;
boolean running = true;
walking wa,wd;
// exponential random time (milliseconds)
long expTime(double rate) {
  return (long)(-Math.log(1 - Math.random()) / rate * 1000.0);
}

void setup() {
  size(1000, 300);
  textSize(15);
  // start threads
  wa = new walking();
  wd = new walking();
  new ArrivalThread().start();
  new DepartureThread().start();
}
void draw() {
  background(255);
  fill(0);
  text("M/M/1 Queue Simulation", 120, 40);
  text("Queue Length: " + queue.size(), 150, 90);
  text("Arrival rate λ = " + (float)lambda, 150, 140);
  text("Service rate μ = " + (float)mu, 150, 170);
  // suh
  synchronized(queue) {
      fill(0,0,255);
      man(width/2+155, 230, 10, 0); // cashier
      rect(width/2+125, 240, 70, 30); // desk
    for (int i = 0; i<queue.size(); i++ ) {
      fill(255, 0, 0);
      man(width/2+150-i*30, 250, 10, queue.get(i));
    }
  } // suh  
  if(wd.alive) wd.update(width);
}
