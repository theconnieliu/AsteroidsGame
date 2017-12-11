Spaceship bob = new Spaceship();
Stars [] sky = new Stars[100];
//Asteroid [] rocks = new Asteroid[5];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
public void setup() 
{
  size(500,500);
  for(int i = 0; i < sky.length; i++) {
    sky[i] = new Stars();
  }
  for(int i = 0; i < 3; i++) {
    rocks.add(new Asteroid());
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
  for(int i = 0; i < rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();
    if (dist(rocks.get(i).getX(), rocks.get(i).getY(), bob.getX(), bob.getY()) < 20) {
      rocks.remove(i);
    }
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