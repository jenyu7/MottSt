import java.util.*;
public class Restaurant {

    //instance vars
    private Kitchen kitchen;
    private Time calcSpawn;
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
      BJB = w;
      calcSpawn = new Time();
      calcSpawn.startTime();
    }
     
    void display()
    {
      kitchen.display();
      for (Customer d : serveList)
      {
        d.display();
      }
    }
    
    void update()
    {
      if (shouldSpawn())
      {
        spawn();
      }
    }
    
    void spawn()
    {
      waitList.add(new Customer());
      println("spawn");
      calcSpawn.startTime();
    }
    
    boolean hasCust()
    {
      return waitList.sizeOf() != 0 || BJB.getCustomers().size() != 0;
    }
    
    boolean shouldSpawn()
    {
      if (calcSpawn.getElapsed() > 30)
      {
        println(calcSpawn);
        return true;
      }
      return false;
    }

}