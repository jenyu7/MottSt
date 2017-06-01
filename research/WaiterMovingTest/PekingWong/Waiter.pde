import java.util.ArrayList;

public class Waiter 
{
  //instance vars
  private ArrayList<Customer> customers;
  private Customer currCust;
  private Kitchen k;
  private ArrayList<Table> tables;
  private ArrayList<Order> orders;
  private Order[] finishedOrders;
  private int[][] nodes;
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
    for (Customer c : customers)
    {
      c.display();
    }
    fill(0,120,100);
    ellipse(x,y,30,30);
  }
  
  void update()
  {
    if (waiterMoves)
    {
      if (k.overKitchen())
      {
        println("kitch");
        //if (k.currOrder != null){println(k.currOrder.overOrder());}
        if (k.currOrder != null && k.currOrder.overOrder())
        {
          println("order");
          //x = 615;
          //y = 95;
          move();
          if (finishedOrders[0] == null) {finishedOrders[0] = k.currOrder;k.currOrder = null;}
          else if (finishedOrders[1] == null){finishedOrders[1] = k.currOrder;k.currOrder = null;}
          return;
        }
        //x = k.x + 15; 
        //y = k.y+65;
        move();
        if (orders.size() > 0)
        {
          Order o = orders.remove(0);
          println(o);
          k.addLastToPending(o);
          k.enqueueFinished(o);
        }
      }
      else{
        for (Table t : tables){
          if (t.overTable()) {
            if (t.state == 0){return;}
            else{
              x = t.x+10;
              y = t.y-20;
              detAct(t);
            }
            break;
          }
        }
      }
    }
    waiterMoves = false;
    
  }
  
  void detAct(Table t)
  {
    //Customers are ready to order
    if (t.state == 1)
    {
     println("took order of table " + t.tableNum);
     // println(t.getOrder());
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
            println("served order of table " + t.tableNum);
            t.c.nowServed();
            finishedOrders[0] = null;
            t.state = 3;
          }
      }
      if (finishedOrders[1] != null)
      {
        if (finishedOrders[1].getTable() == t.tableNum)
        {
            println("served order of table " + t.tableNum);
            t.c.nowServed();
            finishedOrders[1] = null;
            t.state =3;
        }
      }
      }
    //Customers are done eating
    else if (t.state == 3)
    {
      println("finished serving table " + t.tableNum);
      removeCustomer(t.c);
      t.c = null;
    }
  }
  
  //creates a waiter
  public Waiter(Kitchen kitch) 
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
    
    nodes = new int[9][2];
    orders = new ArrayList<Order>(); 
    finishedOrders = new Order[2];
    k = kitch;
    
    x = 15;
    y = 15;
    waiterMoves = false;
    state = 0;
  }

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

  
  //Accessor

  //returns customer list
  public ArrayList<Customer> getCustomers()
  {
    return customers;
  }
  
  public ArrayList<Table> getTables()
  {
    return tables;
  }
 
 void move()
 {
   if (k.overKitchen()) {
     if (k.currOrder != null && k.currOrder.overOrder()) {
       //x = 615;
       //y = 95;
       
     }
     //x = k.x + 15; 
     //y = k.y+65;
   }

 }
  
}