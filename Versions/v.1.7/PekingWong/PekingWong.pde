Customer c;
Waiter ling;
Restaurant pekingWong;
Kitchen k;
void setup()
{
  background(50);
  size(300,300);
  pekingWong = new Restaurant();
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
    
}