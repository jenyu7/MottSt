class Leader
{
  Follower f;
  int x; 
  int y;
  int dx; 
  int dy;
  Leader(Follower fol)
  {
    x = 25;
    y = 5;
    dx = 3;
    dy = 3;
    f = fol;
  }
  
  void display()
  {
    fill(256);
    ellipse(x,y,10,10);
    bounce();
    if (f.state == 1){setFollowerCoord(x,y);}
  }
  
  void setFollowerCoord(int x, int y)
  {
    f.x = x-100;
    f.y = y-100;
  }
  
  //Mechanism for movement
  void bounce() 
  {
    x += dx;
    y += dy;
    if (x < 0 || x > width)  
      dx = -dx;
    if (y < 0|| y > height) 
      dy = -dy;
  }
}