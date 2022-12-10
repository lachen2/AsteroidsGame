Spaceship mimi;
Star[] soleli = new Star[200];
ArrayList <Asteroid> loid = new ArrayList <Asteroid>();
ArrayList <Bullet> shot = new ArrayList <Bullet>();
int energyLevel = 0;
int accelerationLimit = 4;
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
    
  if (energyLevel > 20) {
    //increase acceleration limit and change energy bar to green
    fill(30, 180, 30);
    accelerationLimit = 12;
  }
  else if (energyLevel > 10) {
    //increase acceleration limit and change energy bar to yellow
    fill(234, 237, 60);
    accelerationLimit = 8;
  }
  else {
    fill(255);
    accelerationLimit = 4;
  }
  rect(10, 5, 30, 10);
  fill(0, 0, 0);
  textSize(9);
  text("Energy", 12, 14);
  
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
         energyLevel --;
       }
  }
     for (int num = 0; num < shot.size(); num ++) {
       shot.get(num).move();
       shot.get(num).show();
     }
    for (int j = 0; j < loid.size(); j ++) {
      for (int h = 0; h < shot.size() && shot.size() > 0; h ++) {
      //remove asteroid if shot by bullet
        if (10 > dist((float)loid.get(j).getCenterX(), (float)loid.get(j).getCenterY(),(float)shot.get(h) .getCenterX(), (float)shot.get(h).getCenterY())) {
          loid.remove(j);
          shot.remove(h);
          energyLevel ++;
          if (j > 0)
            j --;
          if (h > 0)
            h --; 
        }
        if (shot.size() > 0 && (shot.get(h).getCenterX() > 390 || shot.get(h).getCenterX() < 10 || shot.get(h).getCenterY() > 390 || shot.get(h).getCenterY() < 10)) {
          //remove bullet if at the sides of the page
          shot.remove(h);
          if (h > 0)
            h --;  
        }
        }
   }
}
 //  System.out.println(energyLevel);


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
      //accelerate spaceship in the direction it is pointing
      if (mimi.getXspeed() < accelerationLimit && mimi.getXspeed() > -accelerationLimit && mimi.getYspeed() < accelerationLimit && mimi.getYspeed() > -accelerationLimit) 
        mimi.accelerate(0.3);
    }
    
    if (keyCode == '2') {
      //rotate spaceship
      mimi.turn(6);
    }
    
    if (key == ' ') {
      //create bullets
      shot.add(new Bullet(mimi));
    }
}  
