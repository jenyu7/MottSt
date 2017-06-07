import java.util.*;
public class Restaurant {

    //instance vars
    private int points;
    private Kitchen kitchen;
    private Waiter JBB;
    ALHeap waitList;
    ArrayList<Customer> serveList;

    //overloaded constructor
    public Restaurant() 
    {
      waitList = new ALHeap();
      for (int i = 0; i < 5; i++)
      {
        waitList.add(new Customer());
      }
      serveList = new ArrayList<Customer>();
      points = 0;
    }
     
    void display()
    {
      kitchen.display();
      JBB.display();
      for (Customer d : serveList)
      {
        d.display();
      }
    }

}