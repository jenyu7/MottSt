Customer c;
Waiter w;
void setup()
{
  background(50);
  size(300,300);
  c = new Customer();
  w = new Waiter();
}

void draw()
{
  background(50);
  c.display();
}