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
  private boolean served;
  int origX;
  int origY;
    
  void display()
  {
    if (state == 0){super.display();}
    if (state == 1){bx = table.x - 10;by = table.y+20;}
    fill(20,20,150);
    ellipse(bx, by, 20, 20);
  }
  
  void checkState()
  {
    if (state == 0)
    {
      if(locked) 
      {
        bx = mouseX-xOffset; 
        by = mouseY-yOffset; 
      }
      else
      {
        bx = origX; by = origY;
      }
    }
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
    origX = 100;
    origY = 100;
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
  
  public void setState(int i)
  {
    state = i;
  }
  
  public void nowServed()
  {
    served = true;
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
    
    public int getMood()
    {
      return mood;
    }
  
  //returns name
  public String getName()
  {
    return name;
  }
}