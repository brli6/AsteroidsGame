Spaceship bob; 
ArrayList <Asteroid> rocky = new ArrayList <Asteroid>();
Star[] nightSky = new Star[300];
ArrayList <Bullet> shot = new ArrayList <Bullet>();
//your variable declarations here
public void setup() 
{
  size(600,600);	
  bob = new Spaceship();
  for (int i = 0; i < nightSky.length; i++)
  {
  	nightSky[i] = new Star();
  }
  for (int i = 0; i < 10; i++)
  {
 	rocky.add(new Asteroid());
  }
 /* for (int i = 0; i < sue.length; i++)
  {

  	sue[i] = new Asteroid();
  }*/
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  //show starry night sky
  for (int i = 0; i <nightSky.length; i++)
  {
  	nightSky[i].show();
  }
  /*for (int i = 0; i < sue.length; i++)
  {
  	sue[i].show();
  	sue[i].move();
  }*/
  //adds an asteroid into the array list
  
  for (int i = 0; i < rocky.size(); i++)
  {
  	rocky.get(i).show();
  	rocky.get(i).move();
  	//removes the astroid if it collides with the ship
  	float d = dist(bob.getX(), bob.getY(), rocky.get(i).getX(), rocky.get(i).getY());
  	if (d < 30)
  		rocky.remove(i);

  for(int j = 0; j < shot.size(); j++)
  {
  	shot.get(j).show();
  	shot.get(j).move();

  float r = dist(shot.get(j).getX(), shot.get(j).getY(), rocky.get(i).getX(), rocky.get(i).getY());
  if (r < 30)
  {
  	rocky.remove(i);
  	shot.remove(j);
  	break;
  }
  }
  }
  // adds a bullet in the ArrayList
  
}
public void keyPressed()
{
	//hyperspace
	if(key == 'h')
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.setX((int)(Math.random()*600));
		bob.setY((int)(Math.random()*600));
		bob.setPointDirection((int)(Math.random()*360));
	}
	//rotates the ship left
	if(key == 'w')
	{
		bob.turn(-40);
	}
	// rotates the ship right
	if(key == 'r')
	{
		bob.turn(40);
	}
	//accelerates the ship
	if(key == 'a')
	{
		bob.accelerate(1);
	}
	//shoots
	if(key == 's')
	{
		shot.add(new Bullet(bob));
	}
}


