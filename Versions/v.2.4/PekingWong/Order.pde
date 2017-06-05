//Class Order
public class Order
{
  //Instance Variables
  protected String dishName;
  protected Table table;
  int tableNum;
  Time t;
  int x;
  int y;
  int state;
  PImage[] imgs;
  PImage image;
  int rand = (int) (Math.random() * 12);

  //Display
  void display()
  {
    if (state == 1)
    {
      image(image, table.x+30, table.y-10);
      return;
    }
    image(image,700,180);
    fill(20, 20, 150, 0);
    ellipse(725,205, 50,50);
  }

  boolean overOrder() {
    if (mouseX >= 700 && mouseX <= 750 && 
      mouseY >= 180 && mouseY <= 230) {
        println("over");
      return true;
    } else {
      return false;
    }
  }

  //Mechanics
  Order(Table tab)
  {
    dishName = "food";
    table = tab;
    tableNum = tab.tableNum;
    t = new Time(5);
    imgs = new PImage[12];
    imgs[0] = loadImage("Images/foodstuffs/1.png");
    imgs[1] = loadImage("Images/foodstuffs/2.png");
    imgs[2] = loadImage("Images/foodstuffs/3.png");
    imgs[3] = loadImage("Images/foodstuffs/4.png");
    imgs[4] = loadImage("Images/foodstuffs/5.png");
    imgs[5] = loadImage("Images/foodstuffs/6.png");
    imgs[6] = loadImage("Images/foodstuffs/7.png");
    imgs[7] = loadImage("Images/foodstuffs/8.png");
    imgs[8] = loadImage("Images/foodstuffs/9.png");
    imgs[9] = loadImage("Images/foodstuffs/10.png");
    imgs[10] = loadImage("Images/foodstuffs/11.png");
    imgs[11] = loadImage("Images/foodstuffs/12.png");
    
    image = imgs[rand];
    image.resize(50,50);
  }
  //returns table number and name of dish
  public String toString()
  {
    return dishName;
  }

  //Two orders are the same if they have the same name and the same table placed the order
  public boolean equals(Order o)
  {
    return this.dishName.equals(o.dishName) && (this.table == o.table);
  }

  //Mutator

  //sets the table# of the order, if it needs to change
  public void setTable(Table t)
  {
    table = t;
    tableNum = t.tableNum;
  }

  //Accessors

  //returns the dishName
  public String getDishName()
  {
    return dishName;
  }

  //returns the table that placed the order
  public Table getTable()
  {
    return table;
  }
}