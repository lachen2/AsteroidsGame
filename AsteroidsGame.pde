//your variable declarations here
Spaceship mimi;
Star[] soleli = new Star[175];
public void setup() 
{
  size(400, 400);
  background(0);
  mimi = new Spaceship();
  for (int i = 0; i < soleli.length; i ++) {
    soleli[i] = new Star();
    soleli[i].show();
  }
}
public void draw() 
{
  mimi.show();
  mimi.move();
}
public void keypressed() {
  if (key == 'z') {
    mimi.setXspeed(0);
    mimi.setYspeed(0);
    mimi.setCenterX(50);
    mimi.setCenterY(50);//(int)(Math.random() * 400));
    System.out.println('h');
    mimi.show();
  }
    if (keyCode == UP) {
      mimi.setYspeed(-5);
      mimi.show();
      mimi.move();
    }
    if (keyCode == DOWN) {
      mimi.setYspeed(5);
      mimi.accelerate(5);
     //mimi.move();
    }
    if (keyCode == RIGHT) {
      mimi.setXspeed(5);
      mimi.accelerate(5);
    }
    if (keyCode == LEFT) {
      mimi.setXspeed(-5);
      mimi.getXspeed();
      mimi.accelerate(5);
    }
    if (keyCode == 'a') {
      mimi.turn(180);
      mimi.setPointDirection(20);
    }
}     
