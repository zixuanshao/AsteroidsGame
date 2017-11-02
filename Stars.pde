class Stars //note that this class does NOT extend Floater
{
  protected int myX, myY;
  public Stars(){
    myX=(int)(Math.random()*600);
    myY=(int)(Math.random()*600);
  }
  public void show()
  {
    for (int i=0; i<aBunch.length; i++)
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX,myY,5,5);
  }
}
