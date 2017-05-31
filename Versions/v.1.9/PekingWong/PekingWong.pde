import controlP5.*;

Customer d;
Waiter ling;
Restaurant pekingWong;
Kitchen k;
PImage bgimg;

void setup()
{
 // bgimg = loadImage("RestaurantFloor.jpg");
 // size(1920,1080);
  size(1300,800);
  pekingWong = new Restaurant();
  d = pekingWong.waitList.peekMin();
  ling = new Waiter();
  k = new Kitchen();
  run();
}

void draw()
{
 // background(bgimg);
  background(0);
  d.display();
  ling.display();
  if (ling.waiterMoves) {
    ling.move();
  }
}

void mouseClicked() 
{
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

void mousePressed()
{
  if(d.overBox) 
  { 
    d.locked = true; 
  } 
  else 
  {
    d.locked = false;
  }
  d.xOffset = mouseX-d.bx; 
  d.yOffset = mouseY-d.by; 
}

void mouseDragged() 
{
  if(d.locked) 
  {
    d.bx = mouseX-d.xOffset; 
    d.by = mouseY-d.yOffset; 
  }
}

void mouseReleased() 
{
  d.locked = false;
}

void run()
{
    
}