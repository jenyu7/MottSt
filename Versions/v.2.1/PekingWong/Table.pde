
class Table
{
  Customer c; 
  Order order;
  Time wait;
  int tableNum;
  int state;
  int x;
  int y;
  //Location l;

  //New table with no customer, but a number assignment
  Table(int num, int setX, int setY)
  {
    tableNum = num;
    c = null;
    x = setX;
    y = setY; 
    order = null;
    wait = new Time();
  }

  void display() { 
    update();
    fill(255);
    rect(x, y, 50, 50, 7);
  }

  void update()
  {
    if (wait != null && c != null)
    {
      if (!wait.atGoal() && wait.atThreshold())
      {
        if (wait.atInputTime(wait.threshold + wait.interval))
        {
          /*
          println("target: " + wait.target);
           println("threshold: " + wait.threshold);
           println("elapsed: " + wait.getElapsed());
           */
          c.mood --;
          wait.interval += 2;
        }
      } else if (wait.atGoal())
      {
        c.state = 4;
      }
    }
  }

  boolean overTable() {
    if (mouseX >= x && mouseX <= x+50 && 
      mouseY >= y && mouseY <= y+50) {
      return true;
    } else {
      return false;
    }
  }

  boolean inside(float currX, float currY)
  {
    return currX >= x && currX <= x + 50 && currY >= y && currY <= y+50;
  }
  //Mutators
  //Sets the table# of the customer
  public void setTable(int num) 
  {
    tableNum = num;
  }

  //sets the customer seated at the table
  void setCust(Customer in)
  {
    c = in;
    //wait time is lower for customers of higher priority (lower VIPNum)
    //wait.setGoal(c.getVIPNum() * 10);
    wait.setGoal(5);
    wait.startTime();
  }

  void setOrder(Order o)
  {
    order = o;
  }

  //Accessors
  //returns order placed by table
  public Order getOrder()
  {
    return order;
  }

  //returns customer seated at table
  public Customer getCust()
  {
    return c;
  }
}