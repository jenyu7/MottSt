import java.util.*;
public class Restaurant {

    //instance vars
    private int points;
    private Kitchen kitchen;
    ALHeap waitList;
    ArrayList<Customer> serveList;
    Waiter BJB;

    //overloaded constructor
    public Restaurant(Waiter w) 
    {
      waitList = new ALHeap();
      for (int i = 0; i < 5; i++)
      {
        waitList.add(new Customer());
      }
      kitchen = new Kitchen();
      serveList = new ArrayList<Customer>();
      points = 0;
      BJB = w;
    }
     
    void display()
    {
      kitchen.display();
      for (Customer d : serveList)
      {
        d.display();
      }
    }
    
    boolean hasCust()
    {
      return waitList.sizeOf() == 0 && BJB.getCustomers().size() == 0;
    }

}