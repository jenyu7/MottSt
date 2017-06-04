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
  int rand = (int) (Math.random() * 3);

  void display()
  {
    if (state == 0) {
      super.display();
    }
    if (state == 1) {
      bx = table.x - 10;
      by = table.y+20;
    }
    image(images[rand],bx,by);
    noStroke();
    fill(20, 20, 150, 0);
    rect(bx, by, 80, 150);    
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
    bx = 100;
    by = 100;
    origX = 100;
    origY = 100;
    
    images = new PImage[4];
    images[0] = loadImage("Images/Customer1.png");
    images[1] = loadImage("Images/Customer2.png");
    images[2] = loadImage("Images/Customer3.png");
    images[3] = loadImage("Images/Customer4.png");

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