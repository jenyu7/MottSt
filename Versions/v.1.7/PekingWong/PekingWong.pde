Customer c;
Waiter ling;
Restaurant pekingWong;
Kitchen k;
void setup()
{
  background(50);
  size(600,600);
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
  ling.display();
  if (ling.waiterMoves) {
    ling.move();
  }
}

void mouseClicked() {
  ling.waiterMoves = true;
}

void run()
{
    
}