//Class Customer
import java.util.ArrayList;

public class Customer extends Draggable
{
  //Instance Variables
  private String name;
  private Table table;
  private int VIPNum;
  private int mood;
  private int state;
    
  void display()
  {
    super.display();
    fill(20,20,150);
    ellipse(bx, by, 20, 20);
    /*
    if (state == 0)
    {
    }
    if (state == 1)
    {
      super.display();
    }*/
  }
  
  //Constructor: populates order with random dishes
  public Customer()
  {
    super(20);
    name = "BJB";
    VIPNum = (int) (Math.random() * 10);
    state = 0;
    bx = 100;
    by = 100;
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