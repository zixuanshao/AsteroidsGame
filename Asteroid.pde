class Asteroid extends Floater  
{
  public void setX(int x){myCenterX=x;};  
  public int getX(){return (int)myCenterX;};   
  public void setY(int y){myCenterY=y;};   
  public int getY(){return (int)myCenterY;};   
  public void setDirectionX(double x){myDirectionX=x;};   
  public double getDirectionX(){return myDirectionX;};   
  public void setDirectionY(double y){myDirectionY=y;};   
  public double getDirectionY(){return myDirectionY;};   
  public void setPointDirection(int degrees){myPointDirection=degrees;};   
  public double getPointDirection(){return myPointDirection;}; 
  private int myRotatingSpeed;

  public Asteroid()
  {
  	myRotatingSpeed = (int)(Math.random()*21-10);
    corners = 6; 
    int[] xCor = {-11, 7, 13, 6, -11, -5};   
    int[] yCor = {-8, -8, 0, 10, 8, 0};
    xCorners = xCor;   
    yCorners = yCor;
    myColor = color(255);
  }
  public boolean collide(int x, int y)
  {
    if(dist((int)myCenterX, (int)myCenterY, x, y) < 40)
    {
      return true;
    }
    else {
      return false;
    }
  }
  public void move()
  {
    turn(myRotatingSpeed);
    super.move();
  }
}
