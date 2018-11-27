Spaceship bob; 
// Asteroid[] sue = new Asteroid[20];
ArrayList <Asteroid> rocky = new ArrayList <Asteroid>();
Star[] nightSky = new Star[300];
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
  for (int i = 0; i <nightSky.length; i++)
  {
  	nightSky[i].show();
  }
  /*for (int i = 0; i < sue.length; i++)
  {
  	sue[i].show();
  	sue[i].move();
  }*/
  for (int i = 0; i < rocky.size(); i++)
  {
  	rocky.get(i).show();
  	rocky.get(i).move();
  	float d = dist(bob.getX(), bob.getY(), rocky.get(i).getX(), rocky.get(i).getY());
  	if (d < 30)
  		rocky.remove(i);
  }
}
public void keyPressed()
{
	if(key == 'h')
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.setX((int)(Math.random()*600));
		bob.setY((int)(Math.random()*600));
		bob.setPointDirection((int)(Math.random()*360));
	}
	if(key == 'w')
	{
		bob.turn(-40);
	}

	if(key == 'r')
	{
		bob.turn(40);
	}
	if(key == 'a')
	{
		bob.accelerate(1);
	}
}


