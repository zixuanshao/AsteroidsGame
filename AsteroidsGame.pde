Spaceship bob;
boolean isAccelerating = false;
boolean isTurningLeft = false;
boolean isTurningRight = false;
boolean isHyperspace = false;

Stars[] aBunch;
ArrayList <Asteroid> ast;
ArrayList <bullet> boos;

public void setup() 
{  
  size(600, 600);
  aBunch = new Stars[200];
  bob = new Spaceship();
  ast = new ArrayList <Asteroid>();

  for (int i=0; i<aBunch.length; i++)
  {
    aBunch[i]=new Stars();
  }
  for (int i=0; i<10; i++)
  {
    ast.add(i, new Asteroid());
  }
  boos = new ArrayList <bullet>();
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  fill(255);

  for(int i = 0; i<ast.size(); i++)
  {
    ast.get(i).show();
    ast.get(i).move();
    ast.get(i).accelerate(0.5);
    if (ast.get(i).collide(bob.getX(), bob.getY()) == true)
    {
      ast.remove(i);
      System.out.println("crash") ; 
    }
      ast.remove(i);
  }

  for(int i = 0; i<boos.size(); i++)
  {
    boos.get(i).show();
    boos.get(i).move();
    ast.get(i).accelerate(0.5);
    for(int n=0; n<ast.size(); n++){
      if (boos.get(i).collide(ast.get(n).getX(), ast.get(n).getY()) == true)
      {
        boos.remove(i);
        ast.remove(n);
        System.out.println("crash") ; 
      }
    }
    
  }

  for (int i=0; i<200; i++)
  {
    aBunch[i].show();
  }

<<<<<<< HEAD
  if (isAccelerating == true) bob.accelerate(5);
  if (isTurningLeft == true) bob.turn(-10);
  if (isTurningRight == true) bob.turn(10);
=======
  if (isAccelerating == true) bob.accelerate(20);
  if (isTurningLeft == true) bob.turn(-15);
  if (isTurningRight == true) bob.turn(15);
>>>>>>> f8bcf86975174a7b6f8deb6b29291da61d99c586

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
  if (key == ' ') boos.add(new bullet(bob));
}
public void keyReleased()
{
  if (key == '5') isAccelerating = false;
  if (key == '4') isTurningLeft = false;
  if (key == '6') isTurningRight = false;
  if (key == '2') isHyperspace = false;
}
