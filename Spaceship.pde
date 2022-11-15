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
    public void setCenterX(double x) {
      myCenterX = x;
    }
    public void setCenterY(double y) {
      myCenterY = y;
    }
    public void setPointDirection(double degrees) {
      myPointDirection = degrees;
    }
    public void move() {
      super.move();
    }
}
