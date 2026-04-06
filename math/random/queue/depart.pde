class DepartureThread extends Thread {
  public void run() {
    while (running) {
      int served = -1;
      synchronized(queue) {
        if (!queue.isEmpty()) {
          served = queue.removeFirst();
          wd.initialize(width/2+150,served);
        }
      }
      if (served != -1) {
        println("Departure: Customer " + served + " | Queue length = " + queue.size());
        try {
          Thread.sleep(expTime(mu));
        }
        catch (InterruptedException e) {
        }
      } else {
        // queue empty → wait briefly outside lock
        try {
          Thread.sleep(50);
        }
        catch (InterruptedException e) {
        }
      }
    }
  }
}
