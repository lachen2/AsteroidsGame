class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star() {
    myX = (int)(Math.random() * 500);
    myY = (int)(Math.random() * 500);
  }
  public void show() {
    noStroke();
    fill((int)(Math.random() * 80) + 130, (int)(Math.random() * 80) + 130, 50);
    ellipse(myX, myY, (float)(Math.random() * 2) + 1, (float)(Math.random() * 2) + 1);
  }
}
