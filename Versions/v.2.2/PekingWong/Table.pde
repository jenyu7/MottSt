
class Table
{
  Customer c; 
  Order order;
  int tableNum;
  int state;
  int x;
  int y;
  PImage visual;
  //Location l;
  
  //New table with no customer, but a number assignment
  Table(int num, int setX, int setY)
  {
    tableNum = num;
    c = null;
    x = setX;
    y = setY; 
    order = null;
    visual = loadImage("table2v2.png");
    //l = new Location(x-55, y);
  }
  
  void display() { 
    if (c != null && state == 1)
    {
    }
    else if(state == 2)
    {
    }
    else
    {
    }
    fill(255);
    image(visual, x , y);
    //rect(x,y,50,50,7);
  }
  
  boolean overTable()  {
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