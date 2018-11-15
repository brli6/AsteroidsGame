class Asteroid extends Floater
{
	private int rotationSpeed;
	public void setX(int x){myCenterX = x;} 
  	public int getX(){return (int)myCenterX;}   
  	public void setY(int y){myCenterY = y;}   
  	public int getY(){return (int)myCenterY;}   //include int because this variable is initialized as double
  	public void setDirectionX(double x){myDirectionX = x;}   
  	public double getDirectionX(){return myDirectionX;}   
  	public void setDirectionY(double y){myDirectionY = y;}   
  	public double getDirectionY(){return myDirectionY;}   
  	public void setPointDirection(int degrees){myPointDirection = degrees;}   
  	public double getPointDirection(){return myPointDirection;} 
	public Asteroid()
	{
		corners = 9;
		//int[] xS = {4, 8, 8, 2, -3, -10, -11, -9, -3};
		//int[] yS = {9, 4, -2, -4, -8, -3, 0, 4, 5};
		//int[] xS = {8, 16, 16, 4, -6, -20, -22, -18, -6};
		//int[] yS = {18, 8, -4, -12, -16, -6, 0, 8, 20};
		int[] xS = {12, 20, 20, 8, -10, -24, -26, -22, -10};
		int[] yS = {22, 12, -8, -16, -20, -10, 4, 12, 24};
		xCorners = xS;
		yCorners = yS;
		myColor = (#5A5757);
		rotationSpeed = (int)((Math.random()*11)-5);
		myCenterX = (int)(Math.random()*600);
		myCenterY = (int)(Math.random()*600);
		myDirectionX = (int)((Math.random()*8)-4);
		myDirectionY = (int)((Math.random()*8)-4);
		if (myDirectionX == 0)
		{
			myDirectionX = 5;
		}
		if (rotationSpeed == 0)
		{
			rotationSpeed = 5;
		}
	}
	public void move()
	{
		turn(rotationSpeed);
		super.move();
	}


}