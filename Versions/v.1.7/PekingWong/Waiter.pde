import java.util.ArrayList;

public class Waiter 
{
  //instance vars
  private ArrayList<Customer> customers;
  private Customer currCust;
  private ArrayList<Table> tables;
  private Kitchen kitch;

  void display()
  {
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