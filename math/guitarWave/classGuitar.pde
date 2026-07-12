class guitar {
  guitar(int mm) {
    tpoints = mm;
    fxnp1 = new float[tpoints+2];
    fxn = new float[tpoints+2];
    fxnm1 = new float[tpoints+2];
    int i, j;
    float x, fac, k, tmp;
    /* Calculate initial values based on sine curve */
    fac = 10.0 * PI;  // 2.0 original
    k = 0.0;
    tmp = tpoints - 1;                // 1 period
    for (j = 1; j <= tpoints; j++) {
      x = k / tmp;
      fxn[j] = sin(fac * x);     // initial condition f(x, t)
      k = k + 1.0;
    }
    /* Initialize old values array */
    for (i = 1; i <= tpoints; i++)
      fxnm1[i] = fxn[i];  // initial condition f(x, t-dt) = f(x, t)
  }
  int tpoints, MAXPOINTS, MINPOINTS;
  float [] fxnp1, fxn, fxnm1;
  /***************************************************************************
   *     Update all values along line a specified number of times
   **************************************************************************/
  void update() {
    int j;
    for (j = 1; j <= tpoints; j++) {              // location x
      /* global endpoints, boundary condition */
      if ((j == 1) || (j == tpoints))
        fxnp1[j] = 0.0;
      else {
        do_math(j);
        dline(j);
      }
    }
    /* Update old values with new values */
    for (j = 1; j <= tpoints; j++) {
      fxnm1[j] = fxn[j];  // f(x, t-dt) = f(x, t)
      fxn[j] = fxnp1[j];  // f(x, t) = f(x, t+dt)
    }
  }// update
  /***************************************************************************
   *      Calculate new values using wave equation
   * d^2 f(x,t) / dt^2 = gamma (d^2 f(x,t) / dx^2 )
   **************************************************************************/
  void do_math(int i)
  {
    float dtime, gamma, dx, tau, sqtau;

    //dtime = 0.3; // original;
    dtime = 0.6;
    gamma = 2.0;  // was 1
    dx = 1.0;
    tau = (dtime / dx);
    sqtau = tau * tau;
    fxnp1[i] = (2.0 * fxn[i]) - fxnm1[i]
      + (sqtau * gamma * (fxn[i - 1] - (2.0 * fxn[i]) + fxn[i + 1]));
  }
  // draw the graph of the string
  void dline(int n) {
    float x, y, px, py;
    line(0,height/2,width,height/2);
    px = map((float)(n-1), 0, tpoints, 0, width);
    py = map(fxnp1[n-1], -1, 1, height/4, 3*height/4);
    x = map((float)n, 0, tpoints, 0, width);
    y = map(fxnp1[n], -1, 1, height/4, 3*height/4);
    line(px, py, x, y);
  }
};
