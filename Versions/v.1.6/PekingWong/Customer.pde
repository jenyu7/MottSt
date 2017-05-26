//Class Customer
import java.util.ArrayList;

public class Customer
{
  //Instance Variables
  private String name;
  private Table table;
  private int VIPNum;
  private int mood;
  private int state;
  private int x;
  private int y;
    
  void display()
  {
    if (state == 0)
    {
      ellipse(x, y, 20, 20);
      x ++;
      y ++;
    }
  }
  
  //Constructor: populates order with random dishes
  public Customer()
  {
    name = "BJB";
    VIPNum = (int) (Math.random() * 10);
    state = 0;
    x = 0;
    y = 0;
  }
  
  //Overloaded Constructor: sets a name for the Customer
  public Customer(String s)
  {
    this();
    name = s;
  }
  
  //Prints out the Customer's name and her/his orders
  public String toString()
  {
    return name;
  }
  
  //two customers are equal if they are sitting at the same table
  public boolean equals(Customer c)
  {
    return this.getTable() == c.getTable();
  }
  
  //compares the VIPNums of two customers
  public int compareTo(Customer other)
  {
    if (this.VIPNum < other.VIPNum) {return -1;}
    else if (this.VIPNum > other.VIPNum){return 1;}
    return 0;
  }
  
  public void setTable(Table t)
  {
    table = t;
  }
  
  //returns table number
  public Table getTable()
  {
    return table;
  }

    //returns VIP number
    public int getVIPNum() 
  {
    return VIPNum;
    }
  
  //returns name
  public String getName()
  {
    return name;
  }
}