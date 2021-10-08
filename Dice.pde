void setup()
{
	noLoop();
}
void draw()
{
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}
Die carl;  
void setup()
{
  noLoop();
  size (300, 300);
  carl = new Die (150, 150);
}
void draw()
{
  //your code here
  for (int y = 0; y <=400; y+=17)
  {
    for (int x = 0; x <=400; x+=55)
    {
      carl.roll();
      carl.show();
    
  }
    void mousePressed()
    {
      redraw();
    }
    class Die //models one single dice cube
    {
      //member variable declarations here
      int myX, myY;
      Die(int x, int y) //constructor
      {
        //variable initializations here
        myX = x;
        myY = y;
      }
      void roll()
      {
        //your code here
      }
      void show()
      {
        //your code here
        fill(231, 232, 211);
        rect (50, 20, 50, 50);
        fill(13,13,13);
        ellipse(75,45,10,10);
        rect (myX, myY, 50,50);
      }
    }
