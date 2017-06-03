import java.util.ArrayList;

public class Waiter 
{
  //instance vars
  private ArrayList<Customer> customers;
  private Table currTable;
  private Kitchen k;
  private ArrayList<Table> tables;
  private ArrayList<Order> orders;
  private Order[] finishedOrders;
  private int[][] nodes;
  float x;
  float y;
  boolean waiterMoves;
  int state;

  //create a waiter
  public Waiter(Kitchen kitch) 
  {
    customers = new ArrayList<Customer>();
    tables = new ArrayList<Table>();
    //creates six tables
    tables.add(new Table(1, 400, 400));
    tables.add(new Table(2, 656, 400));
    tables.add(new Table(3, 913, 400));
    tables.add(new Table(4, 400, 600));
    tables.add(new Table(5, 656, 600));
    tables.add(new Table(6, 912, 600));

    nodes = new int[9][2];
    orders = new ArrayList<Order>(); 
    finishedOrders = new Order[2];
    k = kitch;

    x = 15;
    y = 15;
    waiterMoves = false;
    state = 0;
  }

  //Displaying Functions

  //Displays the customers, the tables, and the waiter her/himself
  void display()
  {

    for (int i = 0; i < 6; i++) {
      tables.get(i).display();
      /* for (int j = 0; i < 6; i++) {
       tables.get(i).display();*/
    }
    for (Customer c : customers) {
      c.display();
    }
    fill(0, 120, 100);
    ellipse(x, y, 30, 30);
  }


  /*------
   * Updates the state of the waiter. Invoked when the mouse is clicked. 
   * If the mouse has clicked on the Order at the Kitchen, state = 1.
   *                                 Kitchen and NOT an Order, state = 2.
   *                                 a table, state = 3.
   * state == 1: The waiter is moving to pick up an order from the Kitchen. 
   * state == 2:                      to place an order at the Kitchen. 
   * state == 3:                      to a table. 
   -----*/
  void update()
  {
    if (k.overKitchen())
    {
      if (k.currOrder != null && k.currOrder.overOrder())
      {
        //state 1: picking up order from kitchen
        state = 1;
        return;
      }
      //state 2: going to kitchen to place order
      state = 2;
    } else {
      for (Table t : tables) {
        if (t.overTable()) {
          if (t.state == 0) {
            return;
          } else {
            state = 3;
            currTable = t;
          }
          break;
        }
      }
    }
  }

  //Moves to the specified coordinates by calling the helper goTo(x,y) function.
  void move()
  {
    if (state == 1) {
      goTo(615, 85);
    } else if (state == 2) {
      goTo(415, 85);
    } else if (state == 3) {
      goTo(currTable.x+65, currTable.y-15);
    }
  }

  //Goes to the target X and Y coordinates by incrementing by 10 each time the function is invoked if the waiter is not yet at those coordinates.
  void goTo(int targetX, int targetY) {
    if (y < targetY) {
      y+=10;
    } else if (y > targetY) {
      y-=10;
    } else {
      if (x < targetX) {
        x+=10;
      } else if (x > targetX) {
        x-=10;
      } else {
        waiterMoves = false;
        performAct();
      }
    }
    display();
  }

  //Mechanics Functions

  /*------
   * Performs an action based on the state of the waiter. 
   * States and what they represent are delineated above, before the "update" method. 
   ------*/
  void performAct()
  {
    if (state == 1)
    {
      if (finishedOrders[0] == null) {
        finishedOrders[0] = k.currOrder;
        k.currOrder = null;
      } else if (finishedOrders[1] == null) {
        finishedOrders[1] = k.currOrder;
        k.currOrder = null;
      }
    } else if (state == 2)
    {
      if (orders.size() > 0)
      {
        Order o = orders.remove(0);
        println(o);
        k.addLastToPending(o);
        k.enqueueFinished(o);
      }
    } else if (state == 3)
    {
      detAct(currTable);
    }
    state = 0;
  }

  /*------
   * Specifically determines the act to be performed if the waiter is dealing with tables. 
   * Table states and corresponding actions: 
   * t.state == 1: The customers are ready to place an order. 
   * t.state == 2: The customers are waiting to be served. 
   * t.state == 3: The customers are done eating and waiting for their bill. 
   ------*/
  void detAct(Table t)
  {
    //Customers are ready to order
    if (t.state == 1)
    {
      //println("took order of table " + t.tableNum);
      orders.add(t.getOrder());
      t.state = 2;
    }
    //Customers are ready to be served
    else if (t.state == 2)
    {
      if (finishedOrders[0] != null)
      {
        if (finishedOrders[0].getTable() == t.tableNum)
        {
          //println("served order of table " + t.tableNum);
          t.c.nowServed();
          finishedOrders[0] = null;
          t.state = 3;
        }
      }
      if (finishedOrders[1] != null)
      {
        if (finishedOrders[1].getTable() == t.tableNum)
        {
          //println("served order of table " + t.tableNum);
          t.c.nowServed();
          finishedOrders[1] = null;
          t.state = 3;
        }
      }
    }
    //Customers are done eating
    else if (t.state == 3)
    {
      //println("finished serving table " + t.tableNum);
      removeCustomer(t.c);
      t.c = null;
    }
  }

  //creates a waiter

  //Mutators

  //adds a customer to the customers ArrayList
  public void addCustomer(Customer c) 
  {
    customers.add(c);
  }

  //removes the customer c from customers
  public void removeCustomer(Customer c) 
  {
    for (int i = 0; i < customers.size(); i++) 
    {
      if (customers.get(i).equals(c))
      {
        customers.remove(i);
      }
    }
  }


  //Accessors

  //returns customer list
  public ArrayList<Customer> getCustomers()
  {
    return customers;
  }

  //returns list of tables
  public ArrayList<Table> getTables() {
    return tables;
  }
}