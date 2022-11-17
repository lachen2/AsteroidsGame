//your variable declarations here
Spaceship mimi;
Star[] soleli = new Star[175];
public void setup() 
{
  size(400, 400);
  mimi = new Spaceship();
  for (int i = 0; i < soleli.length; i ++) {
    soleli[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < soleli.length; i ++) 
    //create star background
    soleli[i].show();
 //create spaceship
  mimi.show();
  mimi.move();
}
public void keyPressed() {
  //based on what key is pressed, perform an action
  if (key == 'z') {
    mimi.setXspeed(0);
    mimi.setYspeed(0);
    mimi.setCenterX((int)(Math.random() * 400));
    mimi.setCenterY((int)(Math.random() * 400));
    mimi.turn((Math.random() * 360));
  }
   if (keyCode == UP) {
      mimi.setYspeed(-1.2);
    }
    if (keyCode == DOWN) {
      mimi.setYspeed(1.2);
    }
    if (keyCode == RIGHT) {
      mimi.setXspeed(1.2);
    }
    if (keyCode == LEFT) {
      mimi.setXspeed(-1.2);
    }
    if (keyCode == '1') {
    if (mimi.getXspeed() < 6 && mimi.getXspeed() > -6 && mimi.getYspeed() < 6 && mimi.getYspeed() > -6) 
        mimi.accelerate(0.3);
    }
    if (keyCode == '2') {
      mimi.turn(5);
    }
}    
