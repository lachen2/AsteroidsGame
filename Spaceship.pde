class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 13;
      xCorners = new int[] {14, 2, -1, -6, -2, -6, -12, -12, -6, -2, -6, -1, 2};
      yCorners = new int[] {0, -6, -12, -14, -6, -6, -10, 10, 6, 6, 14, 12, 6};
    //  xCorners = new int[] {-6, -8, -1, -8 };
    //  yCorners = new int[] {0, 8, 0, -8};
      myColor = color(205, 240, 230);
      myCenterX = 200;
      myCenterY = 200;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
    public void setXspeed(double x) {
      myXspeed = x;
    }
    public double getXspeed() {
      return myXspeed;
    }
    public void setYspeed(double y) {
      myYspeed = y;
    }
    public double getYspeed() {
      return myYspeed;
    }
    public void setCenterX(double x) {
      myCenterX = x;
    }
    public void setCenterY(double y) {
      myCenterY = y;
    }
    public void setPointDirection(double dir) {
      if (myPointDirection > 360)
        myPointDirection = 0;
      else
        myPointDirection += dir;
    }

}
