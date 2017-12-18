class Spaceship extends Floater  
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

  public Spaceship()
  {
    corners = 4; 
    int[] xCor = {-10, 20, -10, -15/4};   
    int[] yCor = {10, 0, -10, 0};
    xCorners = xCor;   
    yCorners = yCor;
    myColor = color(192,192,192);   
    myCenterX = myCenterY = 300;  
    myDirectionX = myDirectionY = 0;   
    myPointDirection = 0; 
  }

  public void show()
  {
    fill(myColor);
    noStroke();
    beginShape();

    float dRadians = (float)(myPointDirection*(Math.PI/180));
    translate((float)myCenterX, (float)myCenterY);
    rotate(dRadians);

    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}
