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
      fill(0);
      ellipse(x,y, 10,10);
  }
}