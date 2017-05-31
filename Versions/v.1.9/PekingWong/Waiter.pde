import java.util.ArrayList;

public class Waiter 
{
  //instance vars
  private ArrayList<Customer> customers;
  private Customer currCust;
  private ArrayList<Table> tables;
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
    ellipse(x,y,10,10);
  }
  
  void update()
  {
    waiterMoves = true;
    xMouse = pmouseX;
    yMouse = pmouseY;
    for (Table t : tables){
      if (t.overTable()) {
        if (t.state == 2){t.state = 1;}
        else{t.state = 2;}
        break;
      }
    }
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
    
    nodes = new int[9][2];
    
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
  /*
  public void solve( int x, int y ) {

    delay(150); //slow it down enough to be followable
    
    //primary base case
    if ( solved ) {
        System.exit(0);
    }
  
    //other base case(s)...
    else if ( !(onPath(x,y))  ) {
        return;
    }
    //recursive reduction
    else {
        maze[x][y] = HERO;
      System.out.println( this );
      solve(x , y + 1);
        solve(x , y - 1);
        solve(x + 1, y);
        solve(x - 1, y);
        //System.out.println( this );
    }
  }*/
 
 void move()
 {
   /*Table selected;
   for (Table t : tables)
   {
     if (t.l.insideShape(xMouse, yMouse))
     {
       selected = t;
       break;
     }
   }*/
 }
  
}