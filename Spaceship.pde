class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 4;
      xCorners = new int[] {16, -8, -1, -8 };
      yCorners = new int[] {0, 8, 0, -8};
      myColor = 255;
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
    public void move() {
      super.move();
    }
}
