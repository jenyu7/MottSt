class Location
{
  int x;
  int y;
  int p1x;
  int p2x; 
  int p3y;
  int p4y;
  
  Location(int xcor, int ycor)
  {
    x = xcor;
    y = ycor; 
  }
  
  void setShape(int smolX, int largeX, int smolY, int largeY)
  {
    p1x = smolX;
    p2x = largeX;
    p3y = smolY;
    p4y = largeY;
  }
  
  boolean insideShape(int currX, int currY)
  {
    return currX >= p1x && currX <= p2x && currY >= p3y && currY <= p4y;
  }
  
  int checkAndStep(int currX, int currY)
  {
    if (currX > x)
    {
       return currX-1;
    }
    else if (currX < x)
    {
      return currX+1;
    }
    if (currY < y)
    {
      return currY+1;
    }
    else if (currY > y)
    {
      return currY-1;
    }
    if (currY == y && currX == x)
    {
      return 0;
    }
    else if (currX == x)
    {
      return currX;
    }
    return currY;
  }
  /*
    void move() {
    if (xMouse >= 100 && xMouse <= 150 && yMouse >= 350 && yMouse <= 400) { 
      if (state == 1) {
        if (x > 165) {
          x--;
          display();
        }
        if (y < 375) {
          y++;
          display();
        }
        if (x == 165 && y == 375) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 225) {
          x++;
          display();
        }
        else if (x > 225) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
    else if (xMouse >= 100 && xMouse <= 150 && yMouse >= 450 && yMouse <= 500) {
      if (state == 1) {
        if (x > 165) {
          x--;
          display();
        }
        if (y < 475) {
          y++;
          display();
        }
        if (x == 165 && y == 475) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 225) {
          x++;
          display();
        }
        else if (x > 225) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
    else if (xMouse >= 300 && xMouse <= 350 && yMouse >= 250 && yMouse <= 300) {
      if (state == 1) {
        if (x < 285) {
          x++;
          display();
        }
        if (y < 275) {
          y++;
          display();
        }
        if (x == 285 && y == 275) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 225) {
          x++;
          display();
        }
        else if (x > 225) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
    else if (xMouse >= 300 && xMouse <= 350 && yMouse >= 350 && yMouse <= 400) {
      if (state == 1) {
        if (x < 285) {
          x++;
          display();
        }
        if (y < 375) {
          y++;
          display();
        }
        if (x == 285 && y == 375) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 225) {
          x++;
          display();
        }
        else if (x > 225) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
    else if (xMouse >= 300 & xMouse <= 350 && yMouse >= 450 && yMouse <= 500) {
      if (state == 1) {
        if (x < 285) {
          x++;
          display();
        }
        if (y < 475) {
          y++;
          display();
        }
        if (x == 285 && y == 475) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 225) {
          x++;
          display();
        }
        else if (x > 225) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
    else if (xMouse >= 500 && xMouse <= 550 && yMouse >= 250 && yMouse <= 300) {
      if (state == 1) {
        if (x < 485) {
          x++;
          display();
        }
        if (y < 275) {
          y++;
          display();
        }
        if (x == 485 && y == 275) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 425) {
          x++;
          display();
        }
        else if (x > 425) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
    else if (xMouse >= 500 && xMouse <= 550 && yMouse >= 350 && yMouse <= 400) {
      if (state == 1) {
        if (x < 485) {
          x++;
          display();
        }
        if (y < 375) {
          y++;
          display();
        }
        if (x == 485 && y == 375) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 425) {
          x++;
          display();
        }
        else if (x > 425) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
    else if (xMouse >= 500 && xMouse <= 550 && yMouse >= 450 && yMouse <= 500) {
      if (state == 1) {
        if (x < 485) {
          x++;
          display();
        }
        if (y < 475) {
          y++;
          display();
        }
        if (x == 485 && y == 475) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 425) {
          x++;
          display();
        }
        else if (x > 425) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
  }*/
}