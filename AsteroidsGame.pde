Spaceship bob;
boolean isAccelerating = false;
boolean isTurningLeft = false;
boolean isTurningRight = false;
boolean isHyperspace = false;
Stars[] aBunch;

public void setup() 
{  
  size(600, 600);
  bob = new Spaceship();
  aBunch = new Stars[200];
  for (int i=0; i<aBunch.length; i++)
  {
    aBunch[i]=new Stars();
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();

  for (int i=0; i<200; i++)
  {
    aBunch[i].show();
  }

  if (isAccelerating == true) bob.accelerate(0.5);
  if (isTurningLeft == true) bob.turn(-2);
  if (isTurningRight == true) bob.turn(2);

  fill(255);
  text("myCenterX: "+ bob.getX(), 10, 20);
  text("myCenterY: "+ bob.getY(), 10, 40);
  text("myPointDirection: "+ bob.getPointDirection(), 10, 60);
  text("myDirectionX: "+ (int)(bob.getDirectionX()*100)/100.0, 10, 80);
  text("myDirectionY: "+ (int)(bob.getDirectionY()*100)/100.0, 10, 100);
}

public void keyPressed()
{
	if (key == '5') isAccelerating = true;
	if (key == '4') isTurningLeft = true;
	if (key == '6') isTurningRight = true;
	if (key == '2') 
  {
    bob.setX((int)(Math.random() * 600));
    bob.setY((int)(Math.random() * 600));
    bob.setPointDirection((int)(Math.random() * 360));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    isHyperspace = true;
  }
}
public void keyReleased()
{
  if (key == '5') isAccelerating = false;
  if (key == '4') isTurningLeft = false;
  if (key == '6') isTurningRight = false;
  if (key == '2') isHyperspace = false;
}