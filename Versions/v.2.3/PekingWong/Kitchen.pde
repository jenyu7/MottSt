import java.util.*;

public class Kitchen {

  //instance vars
  private ArrayDeque<Order> pendingFoodList; //this is a deque
  private ALQueue<Order> finishedFoodList; //this is a queue
  private Order[] stovetops;
  Order currOrder;
  int x;
  int y;
  PImage[] images;
  int frame;

  //Display

  void display()
  {
    //fill(130);
    //rect(400, 20, 300, 50);
    frame = (frame + 1) % 2;
    image(images[frame], x, y);
    if (!finishedFoodList.isEmpty())
    {
      if (currOrder == null) {
        currOrder = finishedFoodList.dequeue();
      }
    }
    if (currOrder != null) {
      currOrder.display();
    }
    makeFood();
  }

  boolean overKitchen() {
    if (mouseX >= x && mouseX <= x+300 && 
      mouseY >= y && mouseY <= y+50) {
      return true;
    } else {
      return false;
    }
  }

  //Mechanics

  //default constructor
  public Kitchen() 
  {
    images = new PImage[2];
    images[0] = loadImage("luckycatF1.jpg");
    images[1] = loadImage("luckycatF2.jpg");
    pendingFoodList = new ArrayDeque<Order>();
    finishedFoodList = new ALQueue<Order>();
    stovetops = new Order[3];
    x = 400;
    y = 112;
  }

  public boolean hasStoveSpace()
  {
    return stovetops[0] == null || stovetops[1] == null || stovetops[2] == null;
  }
  //
  public void putOnStove(Order o)
  {
    if (stovetops[0] == null)
    {
      stovetops[0] = o;
    } else if (stovetops[1] == null)
    {
      stovetops[1] = o;
    } else if (stovetops[2] == null)
    {
      stovetops[2] = o;
    }
    o.t.startTime();
  }

  //removes the first item in pendingFoodList
  //and enqueues it to finishedFoodList
  public void makeFood() 
  {
    if (!pendingFoodList.isEmpty())
    {
      Order o = pendingFoodList.removeFirst();
      while (o != null && hasStoveSpace())
      {
        println("placed on stove");
        putOnStove(o);
        if (!pendingFoodList.isEmpty())
        {
          o = pendingFoodList.removeFirst();
        } else
        {
          o = null;
        }
      }
    }
    for (int i = 0; i < 3; i ++)
    {
      Order ord = stovetops[i];
      if (ord != null)
      {
        if (ord.t.atGoal())
        {
          enqueueFinished(ord);
          stovetops[i] = null;
        }
      }
    }
  }

  //returns the pendingFoodList
  public ArrayDeque getPending() 
  {
    return pendingFoodList;
  }

  //returns the finishedFoodList
  public ALQueue getFinished() 
  {
    return finishedFoodList;
  }

  //adds order (e.g. small foods) to the front of pendingFoodList
  public void addFirstToPending(Order order) 
  {
    pendingFoodList.addFirst(order);
  }

  //adds order (e.g. large foods) to the end of pendingFoodList
  public void addLastToPending(Order order) 
  {
    pendingFoodList.addLast(order);
  }

  //removes first order from pendingFoodList when it is done
  public void removeFirstFromPending() 
  {
    pendingFoodList.removeFirst();
  }

  //returns true if pendingFoodList is empty, false otherwise
  public boolean pendingIsEmpty() 
  {
    return pendingFoodList.isEmpty();
  }

  //enqueues order to finishedFoodList when it is done
  public void enqueueFinished(Order order) 
  {
    finishedFoodList.enqueue(order);
  }

  //dequeues first order from finishedFoodList when it is served
  public Order dequeueFinished() 
  {
    return finishedFoodList.dequeue();
  }

  //returns true if finishedFoodList is empty, false otherwise
  public boolean finishedIsEmpty() 
  {
    return finishedFoodList.isEmpty();
  }

  //returns the Stringified version of food lists
  public String toString() 
  {
    String retStr = "";
    retStr += "pending food: " + pendingFoodList.toString();
    retStr += "\n";
    retStr += "finished food: " + finishedFoodList.toString();
    retStr += "\n";
    return retStr;
  }
}