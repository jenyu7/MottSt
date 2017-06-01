
class Table
{
  Customer c; 
  Order order;
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
    //l = new Location(x-55, y);
  }
  
  void display() { 
    if(state == 2)
    {
      fill(255);
      rect(x,y,50,50,7);
    }
    else
    {
      fill(120);
      rect(x,y,50,50);
    }
  }
  
  boolean overTable()  {
  if (mouseX >= x && mouseX <= x+50 && 
      mouseY >= y && mouseY <= y+50) {
    return true;
  } else {
    return false;
  }
}
  
  //Mutators
  //Sets the table# of the customer
  public void setTable(int num) 
  {
      tableNum = num;
      order = new Order(num);
  }
  
  //sets the customer seated at the table
  void setCust(Customer in)
  {
    c = in;
  }
  
  //Accessors
  //returns order placed by table
  public Order getOrders()
  {
    return order;
  }
  
  //returns customer seated at table
  public Customer getCust()
  {
    return c;
  }
}