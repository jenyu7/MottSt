//Class Order (Vanilla Version)
public class Order
{
  //Instance Variables
  protected String dishName;
  protected int tableNum;
  Time t;
  int x;
  int y;
  int state;
  
  //Display
  void display()
  {
    fill(255);
    ellipse(600,50,30,30);
    fill(0);
    text(tableNum + "", 600, 50);
  }
  
  boolean overOrder()  {
      if (mouseX >= 600 && mouseX <= 660 && 
      mouseY >= 50 && mouseY <= 110) {
        return true;
      } 
      else {
        return false;
      }
    }
        
  //Mechanics
  Order(int table)
  {
    dishName = "food";
    tableNum = table;
    t = new Time(30);
  }
  //returns table number and name of dish
  public String toString()
  {
    return dishName;
  }
  
  //Two orders are the same if they have the same name and the same table placed the order
  public boolean equals(Order o)
  {
    return this.dishName.equals(o.dishName) && (this.tableNum == o.tableNum);
  }
  
  //Mutator
  
  //sets the table# of the order, if it needs to change
  public void setTable(int t)
  {
    tableNum = t;
  }
  
  //Accessors
  
  //returns the dishName
  public String getDishName()
  {
    return dishName;
  }
  
  //returns the table that placed the order
  public int getTable()
  {
    return tableNum;
  }
}