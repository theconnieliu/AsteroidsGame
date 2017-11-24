class Stars //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Stars(){
    myX = (int)(random(width));
    myY = (int)(random(height));
  }
  public void show() {
    noStroke();
    fill(random(255), random(255), random(255), random(500));
    ellipse(myX, myY, random(10), random(10));
  }
}