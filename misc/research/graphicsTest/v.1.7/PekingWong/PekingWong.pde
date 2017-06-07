Customer c;
Waiter ling;
Restaurant pekingWong;
Kitchen k;
PImage bgimg;

void setup()
{
  bgimg = loadImage("RestaurantFloor.jpg");
  size(1920,1080);
  pekingWong = new Restaurant();
  c = new Customer();
  ling = new Waiter();
  k = new Kitchen();
  run();
}

void draw()
{
  background(bgimg);
  c.display();
  ling.display();
  if (ling.waiterMoves) {
    ling.move();
  }
}

void mouseClicked() {
  ling.waiterMoves = true;
  ling.xMouse = pmouseX;
  ling.yMouse = pmouseY;
}

void run()
{
    
}