class Table
{
  Customer c; 
  Order order;
  int tableNum;
  int x;
  int y;
  
  //New table with no customer, but a number assignment
  Table(int num, int setX, int setY)
  {
    tableNum = num;
    c = null;
    x = setX;
    y = setY;
  }
  
  void display() {
    fill(255);
    rect(x,y,50,50,7); 
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