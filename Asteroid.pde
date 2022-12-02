class Asteroid extends Floater {
  double turnSpeed;
  
  public Asteroid(){
    corners = 15;
    myCenterX = Math.random() * 400;
    myCenterY = Math.random() * 400;
    xCorners = new int[] {(int)(Math.random() * 5) + 3, 1, (int)(Math.random() * 8) + 2, 5, 4, 3, -3, -((int)(Math.random() * 5) + 3), -6, -((int)(Math.random() * 7) + 6), -6, -(int)(Math.random() * 4) - 3, -2, 4, (int)(Math.random() * 6) + 4};
    yCorners = new int[] {(int)(Math.random() * 5) + 3, 4, 3, (int)(Math.random() * 3), 8, (int)(Math.random() * 6) + 4, (int)(Math.random() * 6) + 5, 7, (int)(Math.random() * 4) + 3, 0, (int)(Math.random() * 2) - 5, -5, -5, -((int)(Math.random() * 2) + 4), -4};
    turnSpeed = Math.random() * 4 - 2;
    myColor = color((int)(Math.random() * 50) + 130);
    myXspeed = Math.random() * 4 - 2;
    myYspeed = Math.random() * 4 - 2;
  }
  
  public void move() {
    //rotate asteroids
    super.move();
    turn(turnSpeed);
  }
  
  public double getCenterX() {
    //get the center x position
    return myCenterX;
  }
  
  public double getCenterY() {
    //get the center y position
    return myCenterY;
  }
}
