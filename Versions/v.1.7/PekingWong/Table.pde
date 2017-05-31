class Table
{
  Customer c; 
  Order order;
  int tableNum;
  int x;
  int y;
  
  //New table with no customer, but a number assignment
  Table(int num)
  {
    tableNum = num;
    c = null;
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