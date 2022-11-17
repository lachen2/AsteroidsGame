class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 13;
      //points for the spaceship
      xCorners = new int[] {14, 2, -1, -6, -2, -6, -12, -12, -6, -2, -6, -1, 2};
      yCorners = new int[] {0, -6, -12, -14, -6, -6, -10, 10, 6, 6, 14, 12, 6};
      myColor = color(205, 240, 230);
      //position of spaceship
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
    //change center coordinates
    public void setCenterX(double x) {
      myCenterX = x;
    }
    public void setCenterY(double y) {
      myCenterY = y;
    }
}
