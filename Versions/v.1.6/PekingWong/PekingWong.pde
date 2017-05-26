Customer c;
Waiter ling;
Restaurant pekingWong;
Kitchen k;
void setup()
{
  background(50);
  size(300,300);
  pekingWong = new Restaurant(1);
  c = new Customer();
  ling = new Waiter();
  k = new Kitchen();
  run();
}

void draw()
{
  background(50);
  c.display();
}

void run()
{
    while(pekingWong.hasCust())
    {
      Customer next = pekingWong.getNextCustomer();
      if ( next != null)
      {
        if(ling.assignTable(next))
        {
          pekingWong.addCustServe(next);
        }
        else
        {
          System.out.println("There are no more tables!");
        }
      }
      for(Table t : ling.tables)
      {
        if (t.getOrders().size() == 0)
        {
          c = t.getCust();
          pekingWong.getServeList().remove(c);
          ling.removeCustomer(c);
          System.out.println("Customer "+ c + " has finished eating and left the restaurant!");
          break;
        }
      }
    }
}