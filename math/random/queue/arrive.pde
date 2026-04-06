class ArrivalThread extends Thread {
  public void run() {
    while (running) {
      try {
        Thread.sleep(expTime(lambda));
      } catch (InterruptedException e) {}

      synchronized(queue) {
        customerID++;
        queue.add(customerID);
        println("Arrival: Customer " + customerID + " | Queue length = " + queue.size());
      }
    }
  }
}
