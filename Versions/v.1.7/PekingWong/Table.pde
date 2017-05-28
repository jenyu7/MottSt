class Table
{
  Customer c; 
  ArrayList<Order> orders;
  int tableNum;
  
  Table(int num)
  {
    orders = new ArrayList<Order>();
    tableNum = num;
    c = null;
  }
  
  //Mutators
  //Sets the table# of the customer
  public void setTable(int num) 
  {
      tableNum = num;
      orders.add(new SDish(tableNum));
      orders.add(new MDish(tableNum));
      orders.add(new LDish(tableNum));
  }
  
  //adds an order for a Customer
  public void addOrder(Order newOrder)
  {
    orders.add(newOrder);
  }
  
  //removes an order after a Customer has been served it
  public int removeOrder(Order oldOrder)
  {
    int index = 0;
    for (Order o: orders)
    {
      if (o.equals(oldOrder))
      {
        orders.remove(index);
        return index;
      }
      index ++;
    }
    return -1;
  }
  
  //finds an order given the name
  public Order findOrder(String name)
  {
    Order temp = null;
    for (Order o : orders)
    {
      if(o.getDishName().equals(name))
      {
        temp = o;
        break;
      }
    }
    return temp;
  }
  
  void setCust(Customer in)
  {
    c = in;
  }
  
  //Accessors
  
  //returns orders
  public ArrayList<Order> getOrders()
  {
    return orders;
  }
  
  public Customer getCust()
  {
    return c;
  }
}