//your variable declarations here
Spaceship mimi;
Star[] soleli = new Star[200];
ArrayList <Asteroid> loid = new ArrayList <Asteroid>();

public void setup() 
{
  size(400, 400);
  mimi = new Spaceship();
  for (int i = 0; i < soleli.length; i ++) {
    soleli[i] = new Star();
  }
  for (int i = 0; i < 10; i ++) {
    loid.add(new Asteroid());
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
  
  for (int i = 0; i < loid.size(); i ++) {
    //show and move all asteroids
    loid.get(i).show();
    loid.get(i).move();
    
    if (loid.size() < 10) {
      //add more asteroid when there is less than 10 asteroids
      loid.add(new Asteroid());
    } 
     float dis = dist((float)loid.get(i).getCenterX(), (float)loid.get(i).getCenterY(), (float)mimi.getCenterX(), (float)mimi.getCenterY());
     //distance between asteroid and spaceship
     
     if (dis < 18) {
       //if spaceship collides with asteroid, asteroid is gone
       loid.remove(i);
       i --;
    }
  } 
}

public void keyPressed() {
  //based on what key is pressed, perform an action for spaceship
  if (key == 'z') {
    //hyperspace
    mimi.setXspeed(0);
    mimi.setYspeed(0);
    mimi.setCenterX((int)(Math.random() * 400));
    mimi.setCenterY((int)(Math.random() * 400));
    mimi.turn((Math.random() * 360));
  }
  
   if (keyCode == UP) {
     //move up
      mimi.setYspeed(-1.2);
    }
    
    if (keyCode == DOWN) {
      mimi.setYspeed(1.2);
      //move down
    }
    
    if (keyCode == RIGHT) {
      mimi.setXspeed(1.2);
    }
    
    if (keyCode == LEFT) {
      mimi.setXspeed(-1.2);
    }
    
    if (keyCode == '1') {
      //accelerate in the direction it is pointing
      if (mimi.getXspeed() < 6 && mimi.getXspeed() > -6 && mimi.getYspeed() < 6 && mimi.getYspeed() > -6) 
        mimi.accelerate(0.3);
    }
    
    if (keyCode == '2') {
      //rotate
      mimi.turn(6);
    }
}      
