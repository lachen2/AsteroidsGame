class Bullet extends Spaceship
{
  public Bullet(Spaceship myShip) {
    myCenterX = myShip.getCenterX();
    myCenterY = myShip.getCenterY();
    myXspeed = myShip.getXspeed();
    myYspeed = myShip.getYspeed();
    myPointDirection = myShip.getPointDirection();
    accelerate(.6);
  }
 public void show() {
   fill(150, 50, 60);
   noStroke();
   ellipse((float)myCenterX, (float)myCenterY, 5, 5);
 }
}
