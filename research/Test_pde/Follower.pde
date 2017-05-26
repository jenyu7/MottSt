class Follower
{
  int x;
  int y;
  int state;
  Follower()
  {
    x = 0;
    y = 0;
  }
  void display()
  {
      keyPressed();
      fill(0);
      ellipse(x,y, 10,10);
  }
  
  void keyPressed() 
  {
    if (key == CODED) 
    {
      if (keyCode == UP) 
      {
        state = 1;
      }
    }
  }
}