Die carl;
void setup()
{
  noLoop();
  size(500,500);
}
void draw ()
{
  background(211, 156, 156);
  int sum = 0;
  for (int y = 0; y <=400; y+=50)
  {
    for (int x = 0; x<=500; x+=50)
    {
      Die carl = new Die(x, y);
      carl.show();
      carl.roll();
      textSize(40);
      if (carl.dots <=6)
      sum = sum + carl.dots;
    }
  }
  text("Total: "+ sum, 150,485);

}
void mousePressed()
{
  redraw();
}
class Die
{
  int myX, myY, dots;
  Die (int x, int y)
  {
    roll();
    myX=x;
    myY=y;
  }
  void roll()
  {
    dots=(int)(Math.random()*6)+1;
  }
  void show()
  {
    fill (231, 232, 211);
    rect (myX, myY, 50, 50);
    if (dots == 1)
    {
      fill (13, 13, 13);
      ellipse (myX+25, myY+25, 10, 10);
    }
    if (dots == 2)
    {
      fill (13, 13, 13);
      ellipse (myX+35, myY+35, 10, 10);
      ellipse (myX+15, myY+15, 10, 10);
    }
    if (dots == 3)
    {
      fill (13, 13, 13);
      ellipse (myX+27, myY+27, 10, 10);
      ellipse (myX+40, myY+40, 10, 10);
      ellipse (myX+15, myY+15, 10, 10);
    }
    if (dots == 4)
    {
      fill (13, 13, 13);
      ellipse (myX+15, myY+15, 10, 10);
      ellipse (myX+40, myY+15, 10, 10);
      ellipse (myX+40, myY+40, 10, 10);
      ellipse (myX+15, myY+40, 10, 10);
    }

    if (dots == 5)
    {
      fill (13, 13, 13);
      ellipse (myX+15, myY+15, 10, 10);
      ellipse (myX+40, myY+15, 10, 10);
      ellipse (myX+40, myY+40, 10, 10);
      ellipse (myX+15, myY+40, 10, 10);
      ellipse (myX+27, myY+25, 10, 10);
    }

    if (dots == 6)
    {
      fill (13, 13, 13);
      ellipse (myX+15, myY+15, 10, 10);
      ellipse (myX+40, myY+15, 10, 10);
      ellipse (myX+40, myY+40, 10, 10);
      ellipse (myX+15, myY+40, 10, 10);
      ellipse (myX+15, myY+28, 10, 10);
      ellipse(myX+40, myY+28, 10, 10);
    }
  }
}
