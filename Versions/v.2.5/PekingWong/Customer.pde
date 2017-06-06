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
  int origX;
  int origY;
  PImage[] images; 
  PImage waiting;
  PImage sitting;
  int rand = (int) (Math.random() * 4);
  Time wait;

  void display()
  {
    update();
    if (state == 0) {
      super.display();
      image(waiting, bx, by);
    }
    if (state == 1) {
      bx = table.x - 50;
      by = table.y-50;
      image(sitting, bx, by);
    }
    noStroke();
    fill(20, 20, 150, 0);
    rect(bx, by, 80, 150);
    
    fill(0);
    text("MOOD: " + mood,bx,by+10);
      //println(mood);
  }
  
  //Checks if the customer has been waiting a certain amount of time. 
  void update()
  {
    if (wait != null && state != -1)
    {
       println(wait.getElapsed());
       mood = 10 - (int)(((float)wait.getElapsed()/wait.target) * 10);
       if (mood <= 0)
       {
         state = 4;
       }
       if (wait.pause)
       {
         //println("pause");
         if (wait.endInterval() && table.state == 1)
         {
           wait.endPause();
           println("Table " + table.tableNum + " is ready to order.");
         }
         if (wait.endInterval()&& table.state == 2)
         {
           println("Table " + table.tableNum + " finished eating.");
           wait.endPause();
           table.order.state = 0;
         }
       }
    }
  }

  void checkState()
  {
    if (state == 0)
    {
      if (locked) 
      {
        bx = mouseX-xOffset; 
        by = mouseY-yOffset;
      } else
      {
        bx = origX; 
        by = origY;
      }
    }
  }

  //Constructor: populates order with random dishes
  public Customer()
  {
    super(80,150);
    name = "BJB";
    VIPNum = (int) (Math.random() * 10) + 1;
    state = 0;
    mood = 10;
    bx = 75;
    by = 190;
    origX = 75;
    origY = 190;
    
    wait = new Time();
    //wait time is lower for customers of higher priority (lower VIPNum)
    wait.setGoal(getVIPNum() * 20);
    //wait.setGoal(5);
   // wait.startTime();
    
    images = new PImage[8];
    images[0] = loadImage("Images/Customer1.png");
    images[1] = loadImage("Images/Customer2.png");
    images[2] = loadImage("Images/Customer3.png");
    images[3] = loadImage("Images/Customer4.png");
    images[4] = loadImage("Images/Cust1SitLeft.png");
    images[5] = loadImage("Images/Cust2SitLeft.png");
    images[6] = loadImage("Images/Cust3SitLeft.png");
    images[7] = loadImage("Images/Cust4SitLeft.png");
    
    waiting = images[rand];
    sitting = images[rand+4];

  }


  //two customers are equal if they are sitting at the same table
  public boolean equals(Customer c)
  {
    return this.getTable() == c.getTable();
  }

  //compares the VIPNums of two customers
  public int compareTo(Customer other)
  {
    if (this.VIPNum < other.VIPNum) {
      return -1;
    } else if (this.VIPNum > other.VIPNum) {
      return 1;
    }
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