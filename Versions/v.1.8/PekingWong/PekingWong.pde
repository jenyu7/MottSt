import controlP5.*;

Customer c;
Waiter ling;
Restaurant pekingWong;
Kitchen k;
PImage bgimg;

void setup()
{
  //bgimg = loadImage("RestaurantFloor.jpg");
  //size(1920,1080);
  size(600,600);
  pekingWong = new Restaurant();
  c = new Customer();
  ling = new Waiter();
  k = new Kitchen();
  run();
}

void draw()
{
  //background(bgimg);
  background(0);
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
  for (Table t : ling.getTables())
  {
    if (t.overTable()) {
      if (t.state == 2)
      {
        t.state = 1;
        break;
      }
      t.state = 2;
      break;
    }
  }
}

void run()
{
    
}