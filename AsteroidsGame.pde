Spaceship bob = new Spaceship();
Stars [] sky = new Stars[100];
Asteroid [] rocks = new Asteroid[5];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < sky.length; i++) {
    sky[i] = new Stars();
  }
  for(int i = 0; i < rocks.length; i++) {
    rocks[i] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < sky.length; i++) {
    sky[i].show();
  }
  bob.show();
  bob.move();
  for(int i = 0; i < rocks.length; i++) {
    rocks[i].show();
    rocks[i].move();
  }
}
public void keyPressed()
{
  if(keyCode == LEFT)
  {
    bob.turn(-10);
  }
  if(keyCode == RIGHT)
  {
    bob.turn(10);
  }
  if(keyCode == UP)
  {
    bob.accelerate(2);
  }
  if(keyCode == DOWN)
  {
    bob.setX((int)random(width));
    bob.setY((int)random(height));  
    bob.setDirectionX(0);
    bob.setDirectionY(0); 
    bob.setPointDirection((int)(Math.random()*100));
  }
}