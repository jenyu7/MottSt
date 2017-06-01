import java.util.*;

public class Kitchen {

    //instance vars
    private ArrayDeque<Order> pendingFoodList; //this is a deque
    private ALQueue<Order> finishedFoodList; //this is a queue
    Order currOrder;
    int x;
    int y;
    
    //Display
    
    void display()
    {
      fill(130);
      rect(400,20,300,50);
      if (!finishedFoodList.isEmpty())
      {
          if (currOrder == null) {currOrder = finishedFoodList.dequeue();}
      }
      if (currOrder != null){currOrder.display();}
    }
    
    boolean overKitchen()  {
      if (mouseX >= x && mouseX <= x+300 && 
      mouseY >= y && mouseY <= y+50) {
        return true;
      } 
      else {
        return false;
      }
    }
    
    //Mechanics

    //default constructor
    public Kitchen() 
    {
      pendingFoodList = new ArrayDeque<Order>();
      finishedFoodList = new ALQueue<Order>();
      x = 400;
      y = 20;
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

    //removes the first item in pendingFoodList
    //and enqueues it to finishedFoodList
    public void makeFood() 
    {
      finishedFoodList.enqueue(pendingFoodList.removeFirst());
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