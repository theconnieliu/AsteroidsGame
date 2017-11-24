Spaceship bob = new Spaceship();
Stars [] sky = new Stars[100];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < sky.length; i++) {
    sky[i] = new Stars();
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