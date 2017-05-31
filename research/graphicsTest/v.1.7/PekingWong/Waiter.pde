import java.util.ArrayList;

public class Waiter 
{
  //instance vars
  private ArrayList<Customer> customers;
  private Customer currCust;
  private ArrayList<Table> tables;
  private Kitchen kitch;
  float x;
  float y;

  void display()
  {
    fill(255);
    rect(100, 350, 50, 50,7);
    rect(100, 450, 50, 50, 7);
    rect(500, 250, 50, 50, 7);
    rect(500, 350, 50, 50, 7);
    rect(500, 450, 50, 50, 7);
    rect(300, 250, 50, 50, 7);
    rect(300, 350, 50, 50, 7);
    rect(300, 450, 50, 50, 7);
    fill(0,120,100);
    ellipse(x,y,10,10);
  }
  
  //creates a waiter
  public Waiter() 
  {
    customers = new ArrayList<Customer>();
    tables = new ArrayList<Table>();
    //creates ten tables
    for (int i = 1; i <= 3; i++)
    {
      tables.add(new Table(i));
    }
    kitch = new Kitchen();
    
    x = 15;
    y = 15;
  }

  //assigns a table to the next customer by removing one of the values from ArrayList tables
  public boolean assignTable(Customer c) 
  {
    if (tables.size() != 0) 
    {
      Table t = tables.remove(0);
      t.setCust(c);
      c.setTable(t);
      addCustomer(c);
      System.out.println("Customer " + c.getName() + " was seated at Table " + c.getTable()+ ".");
      return true;
    }
    return false;
   }

  //adds a customer to the customers ArrayList
  public void addCustomer(Customer c) 
  {
    customers.add(c);
  }

  //removes the customer c from customers, adds to tables
  public void removeCustomer(Customer c) 
  {
    for (int i = 0; i < customers.size(); i++) 
    {
      if (customers.get(i).equals(c))
      {
        customers.remove(i);
      }
    }
    tables.add(c.getTable());
  }
  
  //Accessor

  //returns customer list
  public ArrayList<Customer> getCustomers()
  {
    return customers;
  }
}