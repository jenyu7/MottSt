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
  boolean waiterMoves;
  int state;
  float xMouse;
  float yMouse;

  void display()
  {
    for (int i = 0; i < 8; i++) {
       tables.get(i).display();
    }
    fill(0,120,100);
    ellipse(x,y,10,10);
  }
  
  //creates a waiter
  public Waiter() 
  {
    customers = new ArrayList<Customer>();
    tables = new ArrayList<Table>();
    //creates eight tables
    tables.add(new Table(1,100,350));
    tables.add(new Table(2,100,450));
    tables.add(new Table(3,300,250));
    tables.add(new Table(4,300,350));
    tables.add(new Table(5,300,450));
    tables.add(new Table(6,500,250));
    tables.add(new Table(7,500,350));
    tables.add(new Table(8,500,450));
    
    kitch = new Kitchen();
    
    x = 15;
    y = 15;
    waiterMoves = false;
    state = 0;
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
  
  void move() {
    if (xMouse >= 100 && xMouse <= 150 && yMouse >= 350 && yMouse <= 400) { 
      if (state == 1) {
        if (x > 165) {
          x--;
          display();
        }
        if (y < 375) {
          y++;
          display();
        }
        if (x == 165 && y == 375) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 225) {
          x++;
          display();
        }
        else if (x > 225) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
    else if (xMouse >= 100 && xMouse <= 150 && yMouse >= 450 && yMouse <= 500) {
      if (state == 1) {
        if (x > 165) {
          x--;
          display();
        }
        if (y < 475) {
          y++;
          display();
        }
        if (x == 165 && y == 475) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 225) {
          x++;
          display();
        }
        else if (x > 225) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
    else if (xMouse >= 300 && xMouse <= 350 && yMouse >= 250 && yMouse <= 300) {
      if (state == 1) {
        if (x < 285) {
          x++;
          display();
        }
        if (y < 275) {
          y++;
          display();
        }
        if (x == 285 && y == 275) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 225) {
          x++;
          display();
        }
        else if (x > 225) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
    else if (xMouse >= 300 && xMouse <= 350 && yMouse >= 350 && yMouse <= 400) {
      if (state == 1) {
        if (x < 285) {
          x++;
          display();
        }
        if (y < 375) {
          y++;
          display();
        }
        if (x == 285 && y == 375) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 225) {
          x++;
          display();
        }
        else if (x > 225) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
    else if (xMouse >= 300 & xMouse <= 350 && yMouse >= 450 && yMouse <= 500) {
      if (state == 1) {
        if (x < 285) {
          x++;
          display();
        }
        if (y < 475) {
          y++;
          display();
        }
        if (x == 285 && y == 475) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 225) {
          x++;
          display();
        }
        else if (x > 225) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
    else if (xMouse >= 500 && xMouse <= 550 && yMouse >= 250 && yMouse <= 300) {
      if (state == 1) {
        if (x < 485) {
          x++;
          display();
        }
        if (y < 275) {
          y++;
          display();
        }
        if (x == 485 && y == 275) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 425) {
          x++;
          display();
        }
        else if (x > 425) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
    else if (xMouse >= 500 && xMouse <= 550 && yMouse >= 350 && yMouse <= 400) {
      if (state == 1) {
        if (x < 485) {
          x++;
          display();
        }
        if (y < 375) {
          y++;
          display();
        }
        if (x == 485 && y == 375) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 425) {
          x++;
          display();
        }
        else if (x > 425) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
    else if (xMouse >= 500 && xMouse <= 550 && yMouse >= 450 && yMouse <= 500) {
      if (state == 1) {
        if (x < 485) {
          x++;
          display();
        }
        if (y < 475) {
          y++;
          display();
        }
        if (x == 485 && y == 475) {
          state = 0;
          waiterMoves = false;
          return;
        }
      }
      else if (y < 175) {
        y++;
        display();
      }
      else if (y > 175) {
        y--;
        display();
      }
      else {
        if (x < 425) {
          x++;
          display();
        }
        else if (x > 425) {
          x--;
          display();
        }
        else {
          state = 1; //reached a node
        }
      }
    }
  }
  
}